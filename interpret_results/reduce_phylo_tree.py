import csv
import json
import re
from collections import OrderedDict, Counter
from urllib import request

from Bio import Phylo

from bs4 import BeautifulSoup, Tag


fl_is_leaf = lambda n: n.name or len(n.clades) == 0


def recursive_yield(clades, func):
    for clade in clades:
        if func(clade):
            yield clade

        if len(clade.clades):
            yield from recursive_yield(clade.clades, func)


def get_parents(tree):
    parents = {}
    def assign_parents(x):
        for ch in x.clades:
            parents[id(ch)] = x
        return True
    list(recursive_yield(tree.root.clades, assign_parents))

    for ch in tree.root.clades:
        parents[id(ch)] = tree.root

    return parents


def recursive_find_subtree(leaf, visited: set, parents: dict, unknown_func, to_extend_search:float, step_back):
    # find sister taxa
    parent = parents[id(leaf)]
    sisters = list(recursive_yield(parent.clades, fl_is_leaf))

    # see if sister taxa contain known species:
    are_known = list(not unknown_func(s) for s in sisters)

    if any(are_known) and not all(are_known):
        n_known = len(list(filter(lambda x: x, are_known)))
        n_unknown = len(are_known) - n_known

        # special case where we didn't discover enough known species, keep on going despite having known species
        if to_extend_search and n_known / n_unknown < to_extend_search:
            print("  Extending search...")
            return recursive_find_subtree(parent, visited, parents, unknown_func, to_extend_search, step_back)

        if step_back and id(parent) in parents:
            grandparent = recursive_find_subtree(parent, visited, parents, unknown_func, to_extend_search, False)
            return grandparent

        # if any are known -> the candidate subtree is sufficient for taxonomic identification
        # if not all are known -> the tree is necessary for taxonomic identification

        # also add the unknown leaf sisters to the visited node
        for sister in sisters:
            if sister.name:
                if unknown_func(sister):
                    visited.add(sister.name)

        return parent

    elif not any(are_known):
        # all elements are unknown -> we have to expand our tree
        # step up one level in hierarchy

        return recursive_find_subtree(parent, visited, parents, unknown_func, to_extend_search, step_back)


def reduce_pylo_tree(tree_file, unknown_func, to_extend_search=0.33, drop_by_size=10, step_back=False):
    tree = Phylo.read(tree_file, "newick")

    # ignore archaea
    snork_snork = list('s'+str(i) for i in range(1, 27+1))
    snork_snork.remove('s6'); snork_snork.remove('s7'); snork_snork.remove('s16')

    # assign parents to all nodes
    parents = get_parents(tree)

    #fl_is_leaf = lambda n: len(n.clades) == 0
    fl_all = lambda n: True
    fl_is_unknown = lambda n: fl_is_leaf(n) and unknown_func(n)

    print("Original tree length:", len(list(recursive_yield(tree.root.clades, fl_all))), len(list(recursive_yield(tree.root.clades, fl_is_leaf))))

    # parse leafs and create minimal subtrees that contain closest relatives
    subtrees = []
    visited = set()

    for leaf in recursive_yield(tree.root.clades, fl_is_leaf):
        if unknown_func(leaf) and leaf.name not in visited:
            old = visited.copy()
            print("Creating subtree...")
            subtree = recursive_find_subtree(leaf, visited, parents, unknown_func, to_extend_search, step_back)

            # output statistics
            newly_discovered = visited - old
            L1 = len(list(recursive_yield(subtree.root.clades, fl_all)))
            L2 = len(list(recursive_yield(subtree.root.clades, fl_is_leaf)))
            L3 = len(newly_discovered)
            print("  size: {} with {} leaves\n  nodes: {}".format(L1, L2, ' '.join(newly_discovered)))

            if drop_by_size and L2 / L3 > drop_by_size:
                if step_back:
                    print("  ...too big, retry")
                    # step back was enabled, disable it
                    subtree = recursive_find_subtree(leaf, visited, parents, unknown_func, to_extend_search, step_back=False)
                    newly_discovered = visited - old
                    L2 = len(list(recursive_yield(subtree.root.clades, fl_is_leaf)))
                    L3 = len(newly_discovered)

                    if L2 / L3 > drop_by_size:
                        print("  ...skipping this tree")
                    visited = visited - newly_discovered
            else:
                subtrees.append((subtree, sorted(list(newly_discovered))))

    return subtrees


def assign_taxa(tree, taxa_name_file, taxa_hier_file, lvl='species'):
    names = {}
    with open(taxa_name_file) as tsv:
        for line in csv.reader(tsv, dialect="excel-tab"):
            names[line[0]] = line[1]

    f = ['domain','phylum','class','order','family','genus','species','taxid']
    reComp = re.compile(r'd__(?P<domain>.*).p__(?P<phylum>.*).c__(?P<class>.*).o__(?P<order>.*).f__(?P<family>.*).g__(?P<genus>.*).s__(?P<species>.*).t__(?P<taxid>.*)', re.M | re.I)

    hiers = {}
    with open(taxa_hier_file) as tsv:
        for line in csv.reader(tsv, dialect="excel-tab"):
            dd = {}
            m = reComp.match(line[1])

            for tax_lvl_ind in f:
                tax_lvl_name = m[tax_lvl_ind]
                dd[tax_lvl_ind] = tax_lvl_name
            hiers[line[0]] = dd

    for leaf in recursive_yield(tree.root.clades, fl_is_leaf):

        if lvl=='species' and leaf.name in names:
            leaf.name = names[leaf.name]
            leaf.name = leaf.name.replace("'", "")

        elif leaf.name in hiers:
            leaf.name = hiers[leaf.name][lvl]


if __name__ == "__main__":
    f = lambda x: x.name[0] == 's'
    f1 = "out/phylo_taxon_names.tsv"
    f4 = "out/phylo_taxon_hierarchy.tsv"
    f2 = "out/prokka_annotated.tree.int.nwk"
    tree_out_file = "out/trees/{}/sub_{}.tree.nwk"

    EX_ST = 0.45
    drop_threshold = 200
    CONS_TRESH = 0.5
    step_back = True

    subtrees = reduce_pylo_tree(f2, f, drop_by_size=drop_threshold, to_extend_search=EX_ST, step_back=step_back)

    lvl = 'family'

    # save files
    for subtree, nodes in subtrees:
        name = '-'.join(nodes)

        assign_taxa(subtree, f1, f4, lvl=lvl)

        Phylo.write(subtree, tree_out_file.format(lvl, name), "newick")

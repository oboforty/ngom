import json
import csv
import pprint
from collections import defaultdict

from BCBio import GFF


import csv
import os



def map_counts_to_gff(count_file, gff_file):

    mapping = defaultdict(lambda: 0)
    with open(count_file) as tsv:
        for line in csv.reader(tsv, dialect="excel-tab"):
            mapping[line[0]] = int(line[1])

    data = {}

    # custom GFF parser, because biopython is crap
    with open(gff_file) as gff:

        for line in gff:
            if line == '##FASTA' or line == "##FASTA\n":
                break
            if line[:2] == '##' or line[0] == '>':
                continue

            pop = {}
            if len(line.split('\t')) < 8:
                print(1)
            for kv in line.split('\t')[8].split(';'):
                k,v = kv.split('=')
                pop[k] = v

            if 'gene' in pop:
                _ID = pop['ID']
                count = mapping[_ID]

                gene_id = pop['gene']
                gene_name = pop.get('product', None)

                if gene_name:
                    #namemapping[gene_id] = gene_name
                    gene_name = gene_name.replace("\n", "")

                if '_' in gene_id:
                    gene_id = gene_id.split('_')[0]

                data[_ID] = [gene_id, gene_name, count]

    return data


if __name__ == "__main__":
    f1 = "data/prokka_annotations/prokka{}/PROKKA_04262019.gff"
    f2 = "out/count{}/count{}.out"
    o3 = "out/counts_both.csv"


    snork_snork = list(range(1, 27+1))
    # ignore archaea
    snork_snork.remove(6)
    snork_snork.remove(7)
    snork_snork.remove(16)

    with open(o3, 'w', newline='') as csvfile:
        filewriter = csv.writer(csvfile, delimiter=',')
        filewriter.writerow(['Bin', 'Gene', 'GeneID', 'row_id', 'Count_RNA137', 'Count_RNA139'])

        for i in snork_snork:
            print(i)

            site137 = map_counts_to_gff(f2.format(137, i), f1.format(i))
            site139 = map_counts_to_gff(f2.format(139, i), f1.format(i))

            all_keys = list(site137.keys()) + list(site139.keys())

            # save everything as one csv file
            for _ID in all_keys:
                gene_id, gene_name, count7 = site137[_ID]
                gene_id9, gene_name9, count9 = site139[_ID]

                assert gene_name == gene_name9
                assert gene_id == gene_id9

                filewriter.writerow([i, gene_name, gene_id, _ID, count7, count9])

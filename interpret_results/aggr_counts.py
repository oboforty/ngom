import csv
from collections import defaultdict

import pandas as pd



if __name__ == "__main__":
    pathways = defaultdict(list)

    DO_FIND_GENES = True
    DO_ANAEROBIC_BINS = False
    DO_EXPRESSIONS = False

    S1 = "out/tableS1_fig.csv"
    with open(S1, 'r') as csvfile:
        spamreader = csv.DictReader(csvfile, delimiter=',', quotechar='"')

        for row in spamreader:
            genes = filter(lambda x: bool(x), row['genes'].split(','))

            pathways[row['pathway']].append({
                "name": row['name'],
                "genes": genes,
            })

    f1 = "out/counts_both.csv"
    df = pd.read_csv(f1)

    if DO_EXPRESSIONS:
        # "expressed" proteins per bin
        df_expr = df.loc[(df['Count_RNA137'] > 0) | (df['Count_RNA139'] > 0)]
        expressions_per_bin = df_expr.groupby(df_expr['Bin']).count().to_dict()['GeneID']


    df_anaerobic = []

    for pathway, pp in pathways.items():
        #print("Searching for {}...".format(pathway))

        for p in pp:
            for search in p['genes']:
                df_search = df.loc[df['GeneID'].str.contains(search)]

                if DO_FIND_GENES:
                    print("| {} | {} | {} | {} | {} | {} |".format(pathway, p['name'], search, df_search['GeneID'].size, df_search['Count_RNA137'].sum(), df_search['Count_RNA139'].sum()))
                    #print("  Found {}: {} - {}".format(search, df_search.size, p['name']))

                df_anaerobic.append(df_search)


    if DO_ANAEROBIC_BINS:
        df_anaerobic = pd.concat(df_anaerobic)

        # todo: run & interpret this
        # proteins found in multiple bins:
        proteins_bins = df_anaerobic.groupby(df_anaerobic['Gene'])['Bin'].unique().to_dict()
        for k,p in proteins_bins.items():
            print("| {} | {} |".format(k, str(p)))

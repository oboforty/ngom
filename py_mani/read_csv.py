import csv

DATA_DICT = 'data/{}.csv'

def load_csv_as_dict(filename):
    items = {}

    with open(filename, 'r') as csvfile:
        spamreader = csv.DictReader(csvfile, delimiter=',', quotechar='"')

        for row in spamreader:
            items[row['name']] = {k:(int(v) if v else None) for k,v in row.items() if k != 'name'}

    return items

def load_data(filename):
  return load_csv_as_dict(DATA_DICT.format(filename))


if __name__ == "__main__":
  # usage:
  # equivalent lines
  units = load_data('units')

  units = load_csv_as_dict('data/units.csv')

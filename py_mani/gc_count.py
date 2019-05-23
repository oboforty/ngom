from io import StringIO
from os import listdir
from os.path import isfile, join

import gzip

from Bio import SeqIO, SeqRecord, SeqUtils
from Bio.Seq import Seq
from Bio.Alphabet import generic_dna


path = '.'
format = 'fastq'

for f in listdir(path):
  print(f)

  if '.fastq' not in f and '.fq' not in f:
    continue

  if '.gz' in f:
    with gzip.open(f, "rt") as handle:
      for record in SeqIO.parse(handle, format):
        print(record.id, SeqUtils.GC(record.seq))
  else:
    for record in SeqIO.parse(f, format):
      print(record.id, SeqUtils.GC(record.seq))

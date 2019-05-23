"""
This script merges SRR4342129 with SRR4342133 for both reads.

So that the assembly will be
"""
import shutil
import sys
import gzip

#from Bio import SeqIO


def merge_bro(file1, file2, outfile):
    i = 0
    with gzip.open(outfile, 'wt') as wfd:

        with gzip.open(file1, "rt") as handle1:

            shutil.copyfileobj(handle1, wfd)

        with gzip.open(file2, "rt") as handle2:
            shutil.copyfileobj(handle2, wfd)

        # i += 1
        #
        # if i % 100000 == 0:
        #     print("Processed {} lines".format(i))

    # todo: gzip the text file

if __name__ == "__main__":
  #merge_bro("SRR4342129_1.paired.trimmed.head.fastq.gz", "SRR4342129_2.paired.trimmed.head.fastq.gz", 'combined_test.paired.trimmed.fastq.gz')

  merge_bro("SRR4342129_1.paired.trimmed.fastq.gz", "SRR4342133_1.paired.trimmed.fastq.gz", 'combined_1.paired.trimmed.fastq.gz')
  #merge_bro("/home/oboforty/thrash/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz", "/home/oboforty/thrash/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz", 'combined_2.paired.trimmed.fastq.gz')

  print("Done merging!")

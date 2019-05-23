import sys

def trim_bro(fn):
  fh = open(fn+'.fastq','r')
  fh2 = open(fn+'.head.fastq','w')

  N = 50

  for i in range(N*4):
    fh2.write(fh.readline())

  fh.close()
  fh2.close()

  print("Done")

if __name__ == "__main__":

  #filename = 'SRR4342137'
  filename = sys.argv[1]

  print("Splitting {}.fastq".format(filename))

  trim_bro(filename)

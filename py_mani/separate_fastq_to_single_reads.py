import sys

def trim_bro(fn):
  fh = open(fn+'.fastq','r')

  fh1 = open(fn+'.forward.fastq','w')
  fh2 = open(fn+'.reverse.fastq','w')
  i = 0

  while True:
    i += 1

    if i % 100000 == 0:
      print("Processed {} lines".format(i))

    header1a = fh.readline()

    if header1a == '':
      break

    data1 = fh.readline()
    header1b = fh.readline()
    quality1 = fh.readline()

    header2a = fh.readline()
    data2 = fh.readline()
    header2b = fh.readline()
    quality2 = fh.readline()

    fh1.write(header1a)
    fh1.write(data1)
    fh1.write(header1b)
    fh1.write(quality1)

    fh2.write(header2a)
    fh2.write(data2)
    fh2.write(header2b)
    fh2.write(quality2)

  fh.close()
  fh1.close()
  fh2.close()

  print("Done")

if __name__ == "__main__":

  #filename = 'SRR4342137'
  filename = sys.argv[1]

  print("Splitting {}.fastq".format(filename))

  trim_bro(filename)

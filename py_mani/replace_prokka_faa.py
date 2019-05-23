import os


for f in os.listdir('.'):
  if f[-3:] == '.py' or os.path.isfile(f):
    continue
  
  os.replace(f + '/PROKKA_04262019.faa', '../seq_prokka_annotated/'+f.replace('prokka','')+'.faa')

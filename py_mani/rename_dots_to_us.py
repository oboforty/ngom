import os


for f in os.listdir('.'):
  if f[-3:] == '.py' or not os.path.isfile(f):
    continue
  
  newname = f.replace('.', '_').replace('_fa', '.fa')
  print(newname)
  os.rename(f, newname)

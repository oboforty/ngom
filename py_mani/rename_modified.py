import os

# renames combined to modified_

for f in os.listdir('.'):
  if f[-3:] == '.py' or not os.path.isfile(f):
    continue
  
  newname = f.replace('combined_', 'modified_')
  print(f, '>', newname)
  os.rename(f, newname)

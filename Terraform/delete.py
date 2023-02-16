import os
import glob

files = glob.glob('*.terraform.lock.hcl')
for filename in files:
    os.remove(filename)

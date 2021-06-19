import os, sys

path = '/home/jal359/Downloads/chicago'

for file in os.listdir(path):
	if file != "complete.log" and file != "jasawn.py":
		os.chdir('/home/jal359/Downloads/chicago')
		os.rename(file, file + '.json')



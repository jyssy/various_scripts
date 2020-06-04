import os, sys

path = 'C:/Users/jal!/Downloads/Sinopiadata/'

for file in os.listdir(path):
	#print(file)
	if file != "complete.log" and file != "jasawn.py":
		os.chdir('C:/Users/jal!/Downloads/Sinopiadata/')
		file = (file)
		filename = file + ".json"
		filename = open(filename,'w')

		#print (filename)

		# content is being deleted from the files (why, oh why?)

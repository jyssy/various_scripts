import os, sys

path = 'C:/Users/jal!/Downloads/Sinopiadata/'

for file in os.listdir(path):
	if file != "complete.log" and file != "jasawn.py":
		os.chdir('C:/Users/jal!/Downloads/Sinopiadata/')
		os.rename(file, file + '.json')

		# file = (file)
        # filename = file + ".json"
        # with open(filename,'w') as newfile, open(file, 'r') as oldfile:
            # newfile.write(oldfile.read())
		# content is being deleted from the files (why, oh why?)

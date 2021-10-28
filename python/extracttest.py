#!/usr/bin/env python3

# testing the opening of a tab delimited file and writing it to comma delmited file 

import csv

with open('extract_14523301.txt', 'r') as extracted:
	extractreader = csv.reader(extracted, delimiter='\t')
	
	with open('newextract.csv', 'w') as newextract:
		extractwriter = csv.writer(newextract, delimiter=',')
		
		for line in extractreader:
			extractwriter.writerow(line)
	
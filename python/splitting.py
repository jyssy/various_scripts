#!/usr/bin/env python3

# testing string splitting
import csv

with open('newextract.csv', 'r') as splitextract:
	string = splitextract.split(',')
	joined = ', '.join(string)
	strings2 = string.join(' ')
	with open('newextractjoined.csv', 'w') as joinedtext:
		joinedtext.write(joined)
	




#strings = 'the test,splitting strings,hungry-split and join,as well as the other join after splitting'
#string = strings.split(',')
#print(string)
#
#joined = ', '.join(string)
#print(joined)
#
##strings2 = string.join(' ')
#with open('split.txt', 'w') as joinedtext:
#	joinedtext.write(joined)
	
# youtube vid on splitting and joining: https://www.youtube.com/watch?v=2WYR0XCoTAo
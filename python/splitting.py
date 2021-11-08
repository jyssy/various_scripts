#!/usr/bin/env python3

# testing string splitting

strings = 'the test,splitting strings,hungry-split and join,as well as the other join after splitting'
string = strings.split(',')
print(string)

joined = ', '.join(string)
print(joined)

#strings2 = string.join(' ')
with open('split.txt', 'w') as joinedtext:
	joinedtext.write(joined)
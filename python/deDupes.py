'''attempting to deduplicate two sets of microform records in order to update the difference'''

import csv, os

with open('dupe1.csv', 'r') as file1, open('dupe2.csv', 'r') as file2:

    dupe1_reader = file1.read().split('\n')
    dupe2_reader = file2.read().split('\n')

    s = set(dupe2_reader)

    deDupes = [line for line in dupe1_reader if line not in s]

    with open('deDupes.csv', 'w') as dedupout:

        ded_writer = csv.writer(dedupout)

        for line in deDupes:

            ded_writer.writerow(line)

            print(s)

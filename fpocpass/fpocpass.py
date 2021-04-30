# looking at yes(s) and no(s)

import re

no = []
yes = []

with open('2021FASTSurveyResponses.csv', 'r') as fastout:
    yayornay = fastout.readlines()

    for line in yayornay:
        line = line[1]
        pattern1 = re.compile(r"no")
        pattern2 = re.compile(r"yes")
        pattern1.split(',')
        pattern2.split(',')
        # print(pattern2)

        if 'no' in line:
            no.append(line)

            print(no)

        if 'yes' in line:
            yes.append(line)

    #     if 'yes' in line:
    #         yes.append(numbers)
    #     if 'no' in line:
    #         no.append(numbers)

# with open('yayornay.csv', 'w') as f:
#     f.write('Yes(s) = {} /'.format(yes)
#     f.write(' No(s) = {} '.format(no)
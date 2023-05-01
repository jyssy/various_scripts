
import pandas as pd

# opening the document
studentorg = pd.read_csv('orgExport.csv')

# dropping columns not needed
studentorg.drop(studentorg.columns[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56]], axis=1, inplace=True)

# counting columns
# items = [[20, 21]]
# transposing
studentorg = studentorg.T

# output
studentorg.to_excel('FFormResults_test2.xlsx')

print('Student Org results ready')


# transposing stuff below: 
# opening the document
# dftransposed = pd.read_csv('orgExport.csv')

# # transposing
# dftransposed = dftransposed.T

# # output
# dftransposed.to_excel('FFormResults_test.xlsx')

# print('Transposed document done')








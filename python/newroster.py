# new student rosters scripts

import csv
import operator
import pandas as pd
from openpyxl.utils.dataframe import dataframe_to_rows
from openpyxl.workbook import Workbook

read_file = pd.read_excel (r'extracttest.xls')
read_file.to_csv (r'extracttest.csv', index = None, header=True)

wb = Workbook()
ws1 = wb.create_sheet('Sheet1', 0)

with open('extract_14523301.csv', 'r') as iuiestdnts:
	csv_iuiestdnts = csv.reader(iuiestdnts)
	for line in csv_iuiestdnts:
#		column1 = []
#		column2 = []
#		column3 = []
#		column4 = []
#		column5 = []
#		column6 = []
#		column7 = []
#		column8 = []
#		column9 = []
#		column10 = []
#		column11 = []
#		column12 = []

		print(line[4])
		
		
		
		
#columns for the final excel .xlsx document:
#1. 'Term Code'
#2. 'Units Taken'
#3. 'Primary Program Code'
#4. 'Class Number'
#5. 'Subject Area'
#6. 'Course Catalog Number'
#7. 'Course Catalog Number'
#8. 'Official Grade'
#9. 'University ID'
#10. 'Enrollment Status Code'
#11. 'Instructor Name'
#12. 'Primary Full Name'


print('healthy py')




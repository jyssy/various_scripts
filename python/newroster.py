# new student rosters scripts

import csv
import operator
import pandas as pd
from openpyxl.utils.dataframe import dataframe_to_rows
from openpyxl.workbook import Workbook

wb = Workbook()
ws1 = wb.create_sheet('Sheet1', 0)

with open('extract_14523301.csv', 'r') as iuiestdnts:
	for line in iuiestdnts:
		column1 = []
		column2 = []
		column3 = []
		column4 = []
		column5 = []
		column6 = []
		column7 = []
		column8 = []
		column9 = []
		column10 = []
		column11 = []
		column12 = []

		print(line)




print('healthy py')




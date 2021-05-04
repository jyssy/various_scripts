# looking at yes(s) and no(s)

import pandas as pd

file = '2021FASTSurveyResponses.csv'
df = pd.read_csv(file)
# print(df.columns)
yesno = pd.value_counts(df['yesno'])

print(yesno)

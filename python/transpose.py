
import pandas as pd

df = pd.read_csv('orgExport.csv')
df = df.T
df.to_csv('FireForm.csv')






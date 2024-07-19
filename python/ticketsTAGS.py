import pandas as pd
import csv

# Read the CSV file
file_path = 'Jira.csv'
df = pd.read_csv(file_path)

# Process the 'Custom field (ACCESS TAGS)' columns
tag_columns = [col for col in df.columns if col.startswith('Custom field (ACCESS TAGS)')]

# Combine all tag columns into one series
all_tags = pd.Series(dtype='str')
all_tags = pd.concat([df[col].dropna() for col in tag_columns], ignore_index=True)

# Get distinct tags and their counts
distinct_tags = all_tags.value_counts().reset_index()
distinct_tags.columns = ['Tag', 'Count']

# Export results to an Excel file
output_path = 'tag_counts.xlsx'
with pd.ExcelWriter(output_path) as writer:
    distinct_tags.to_excel(writer, sheet_name='Distinct Tags', index=False)

print(f"Results have been exported to {output_path}")
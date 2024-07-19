import pandas as pd
import csv

# Read the CSV file
file_path = 'Jira.csv'
df = pd.read_csv(file_path)

# Process the 'Custom field (ACCESS notification watcher groups)' column
field_name = 'Custom field (ACCESS notification watcher groups)'

# Get distinct entries and their counts
distinct_entries = df[field_name].value_counts(dropna=True).reset_index()
distinct_entries.columns = [field_name, 'Count']

# Count the number of rows containing each distinct entry
rows_containing_entries = (
    df[field_name]
    .dropna()  # Drop NaN values to avoid split issues
    .apply(lambda x: pd.Series(x.split(',')))
    .stack()
    .value_counts()
    .reset_index()
)
rows_containing_entries.columns = [field_name, 'Row Count']

# Export results to an Excel file
output_path = 'ticket_counts00.xlsx'
with pd.ExcelWriter(output_path) as writer:
    distinct_entries.to_excel(writer, sheet_name='Distinct Entries', index=False)

print(f"Results have been exported to {output_path}")

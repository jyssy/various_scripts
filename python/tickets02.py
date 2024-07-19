import pandas as pd
import csv

# Read the CSV file
file_path = 'Jira.csv'
df = pd.read_csv(file_path)

# Process the 'Custom field (ACCESS Track)' column
field_name = 'Custom field (ACCESS Track)'

# Get distinct entries and their counts
distinct_entries = df[field_name].value_counts(dropna=True).reset_index()
distinct_entries.columns = [field_name, 'Count']

# Count the number of rows containing each distinct entry
if df[field_name].dropna().empty:
    print(f"The column '{field_name}' is empty.")
    distinct_entries = pd.DataFrame(columns=[field_name, 'Count'])
    rows_containing_entries = pd.DataFrame(columns=[field_name, 'Row Count'])
else:
    # Get distinct entries and their counts
    distinct_entries = df[field_name].value_counts(dropna=True).reset_index()
    distinct_entries.columns = [field_name, 'Count']

    # Split the entries and count the number of rows containing each distinct entry
    rows_containing_entries = (
        df[field_name]
        .dropna()  # Drop NaN values to avoid split issues
        .str.split(',', expand=True)
        .stack()
        .value_counts()
        .reset_index()
    )
    rows_containing_entries.columns = [field_name, 'Row Count']

# Export results to an Excel file
output_path = 'ticket_countsTRACKS.xlsx'
with pd.ExcelWriter(output_path) as writer:
    distinct_entries.to_excel(writer, sheet_name='Distinct Entries', index=False)
    rows_containing_entries.to_excel(writer, sheet_name='Rows Containing Entries', index=False)

print(f"Results have been exported to {output_path}")

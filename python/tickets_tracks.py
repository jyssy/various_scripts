
import pandas as pd

# Read the CSV file
file_path = 'Jira.csv'
df = pd.read_csv(file_path)

# Process the 'Custom field (ACCESS Responsible Handlers)' column
field_name = 'Custom field (ACCESS Responsible Handlers)'

# Get distinct entries and their counts
distinct_entries = df[field_name].value_counts(dropna=True).reset_index()
distinct_entries.columns = [field_name, 'Count']

# Count the number of rows containing each distinct entry
if df[field_name].dropna().empty:
    print(f"The column '{field_name}' is empty.")
    distinct_entries = pd.DataFrame(columns=[field_name, 'Count'])
    rows_containing_entries = pd.DataFrame(columns=[field_name, 'Row Count'])
else:
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

# Process the 'Custom field (ACCESS Operational Support Issues)' column for 'Some ACCESS team' in 'Custom field (ACCESS Responsible Handlers)'
filter_value = 'Some ACCESS team'
filtered_df = df[df[field_name].str.contains(filter_value, na=False, case=False)]
support_issues_field_name = 'Custom field (ACCESS Operational Support Issues)'

if filtered_df[support_issues_field_name].dropna().empty:
    support_issues_distinct_entries = pd.DataFrame(columns=[support_issues_field_name, 'Count'])
else:
    support_issues_distinct_entries = filtered_df[support_issues_field_name].value_counts(dropna=True).reset_index()
    support_issues_distinct_entries.columns = [support_issues_field_name, 'Count']

# Export results to an Excel file
output_path = 'ticket_countsTRACKS.xlsx'
with pd.ExcelWriter(output_path) as writer:
    distinct_entries.to_excel(writer, sheet_name='Responsible Handlers', index=False)
    support_issues_distinct_entries.to_excel(writer, sheet_name='Some ACCESS team', index=False)

print(f"Results have been exported to {output_path}")

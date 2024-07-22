import pandas as pd

# Read the CSV file
file_path = 'Jira.csv'
df = pd.read_csv(file_path)

# Process the 'Custom field (ACCESS Responsible Handlers)' column
handlers_field_name = 'Custom field (ACCESS Responsible Handlers)'
handlers_distinct_entries = df[handlers_field_name].value_counts(dropna=True).reset_index()
handlers_distinct_entries.columns = [handlers_field_name, 'Count']

# Process the 'Custom field (ACCESS Operational Support Issues)' column
support_issues_field_name = 'Custom field (ACCESS Operational Support Issues)'
support_issues_distinct_entries = df[support_issues_field_name].value_counts(dropna=True).reset_index()
support_issues_distinct_entries.columns = [support_issues_field_name, 'Count']
support_issues_distinct_entries = support_issues_distinct_entries.sort_values(by=support_issues_field_name)

# Export results to an Excel file
output_path = 'ticket_countsTRACKS.xlsx'
with pd.ExcelWriter(output_path) as writer:
    handlers_distinct_entries.to_excel(writer, sheet_name='ACCESS Responsible Handler', index=False)
    support_issues_distinct_entries.to_excel(writer, sheet_name='ACCESS Operational Support Issues', index=False)

print(f"Results have been exported to {output_path}")

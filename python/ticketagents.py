import pandas as pd

def process_agents_file(input_csv, output_excel):
    # Read the CSV file
    df = pd.read_csv(input_csv, sep=',')

    # Define the columns we want to keep
    columns_to_keep = [
        "User name",
        "Group name",
        "email",
        "Last seen in Jira Service Management - access-ci",
        "Last seen in Jira - access-ci"
    ]

    # Filter rows where 'agents' is in the Group name and keep only specified columns
    agents_df = df[df['Group name'].str.contains('agents', case=False, na=False)][columns_to_keep]

    # Rename 'Group name' column to 'Area'
    agents_df = agents_df.rename(columns={'Group name': 'Area'})

    # Save to Excel file
    agents_df.to_excel(output_file, index=False)

# Example usage
input_file = 'export-users.csv'
output_file = 'ticket-agents.xlsx'
process_agents_file(input_file, output_file)

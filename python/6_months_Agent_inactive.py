import pandas as pd
from datetime import datetime, timedelta

def process_agents_file(input_csv, output_excel, inactive_excel):
    # Read the CSV file
    df = pd.read_csv(input_csv, sep=',')

    # Define the columns we want to keep
    columns_to_keep = [
        "User name",
        "Group name",
        "email",
        "Added to org",
        "Last seen in Jira Service Management - access-ci",
        "Last seen in Jira - access-ci",
        "Last seen in Confluence - access-ci"
    ]

    # Filter rows where 'agents' is in the Group name and keep only specified columns
    agents_df = df[df['Group name'].str.contains('agents', case=False, na=False)][columns_to_keep]

    # Rename 'Group name' column to 'Area'
    agents_df = agents_df.rename(columns={'Group name': 'Area'})

    # Sort by User name alphabetically
    agents_df = agents_df.sort_values(by='User name')

    # Calculate date 6 months ago from today
    six_months_ago = datetime.now() - timedelta(days=180)

    # Create a mask for inactive users
    inactive_mask = (
        (agents_df['Last seen in Jira Service Management - access-ci'] == 'Never accessed') |
        (agents_df['Last seen in Jira - access-ci'] == 'Never accessed') |
        (agents_df['Last seen in Confluence - access-ci'] == 'Never accessed')
    )

    # Filter inactive users and sort by User name
    inactive_df = agents_df[inactive_mask].sort_values(by='User name')

    # Save inactive users to separate Excel file
    if not inactive_df.empty:
        inactive_df.to_excel(inactive_excel, index=False)

    # Save all agents to main Excel file
    agents_df.to_excel(output_excel, index=False)

# Example usage
input_file = 'export-users.csv'
output_file = 'agents_output.xlsx'
inactive_file = '6_months_agents_inactive.xlsx'
process_agents_file(input_file, output_file, inactive_file)

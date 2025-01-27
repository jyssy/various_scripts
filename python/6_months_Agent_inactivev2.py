import pandas as pd
from datetime import datetime, timedelta

def process_agents_file(input_csv, inactive_excel):
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
        "Last seen in Confluence - access-ci",
    ]

    # Filter rows where 'agents' is in the Group name and keep only specified columns
    agents_df = df[df['Group name'].str.contains('agents', case=False, na=False)][columns_to_keep]

    # Rename 'Group name' column to 'Area'
    agents_df = agents_df.rename(columns={'Group name': 'Area'})

    # Sort by User name alphabetically
    agents_df = agents_df.sort_values(by='User name')

    # Calculate date 6 months ago from today
    six_months_ago = datetime.now() - timedelta(days=180)

    # List of columns to check for activity
    activity_columns = [
        'Last seen in Jira Service Management - access-ci',
        'Last seen in Jira - access-ci',
        'Last seen in Confluence - access-ci'
    ]

    # Initialize arrays for each column's status
    is_never_accessed = pd.DataFrame(False, index=agents_df.index, columns=activity_columns)
    is_old_date = pd.DataFrame(False, index=agents_df.index, columns=activity_columns)
    is_recent_date = pd.DataFrame(False, index=agents_df.index, columns=activity_columns)

    # Check each column's status
    for col in activity_columns:
        is_never_accessed[col] = agents_df[col] == 'Never accessed'

        # Convert dates and check for old/recent dates
        dates = pd.to_datetime(agents_df[col], errors='coerce')
        is_old_date[col] = (dates < six_months_ago) & dates.notna()
        is_recent_date[col] = (dates >= six_months_ago) & dates.notna()

    # Flag any row that has any recent activity
    has_recent_activity = is_recent_date.any(axis=1)

    # Inactive mask: Flag rows with NO recent activity
    inactive_mask = ~has_recent_activity

    # Filter inactive users and sort by User name
    inactive_df = agents_df[inactive_mask].sort_values(by='User name')

    # Save inactive users to Excel file
    if not inactive_df.empty:
        inactive_df.to_excel(inactive_excel, index=False)

# Example usage
input_file = 'export-users.csv'
inactive_file = '6_months_agents_inactive.xlsx'
process_agents_file(input_file, inactive_file)

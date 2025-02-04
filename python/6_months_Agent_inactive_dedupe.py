
import pandas as pd
from datetime import datetime, timedelta
import openpyxl

def process_agents_file(input_csv, output_excel):
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

    # Calculate date 6 months ago from today
    six_months_ago = datetime.now() - timedelta(days=180)

    # List of columns to check for activity
    activity_columns = [
        'Last seen in Jira Service Management - access-ci',
        'Last seen in Jira - access-ci',
        'Last seen in Confluence - access-ci'
    ]

    # First, group by User name to consolidate multiple entries
    grouped_df = agents_df.groupby('User name').agg({
        'Area': lambda x: ', '.join(sorted(set(x))),
        'email': 'first',
        'Added to org': 'first',
        'Last seen in Jira Service Management - access-ci': 'first',
        'Last seen in Jira - access-ci': 'first',
        'Last seen in Confluence - access-ci': 'first'
    }).reset_index()

    # Now check activity status for each consolidated user
    is_never_accessed = pd.DataFrame(False, index=grouped_df.index, columns=activity_columns)
    is_old_date = pd.DataFrame(False, index=grouped_df.index, columns=activity_columns)
    is_recent_date = pd.DataFrame(False, index=grouped_df.index, columns=activity_columns)

    # Check each column's status
    for col in activity_columns:
        is_never_accessed[col] = grouped_df[col] == 'Never accessed'

        # Convert dates and check for old/recent dates
        dates = pd.to_datetime(grouped_df[col], errors='coerce')
        is_old_date[col] = (dates < six_months_ago) & dates.notna()
        is_recent_date[col] = (dates >= six_months_ago) & dates.notna()

    # Create masks for different conditions
    has_recent_activity = is_recent_date.any(axis=1)
    all_never_accessed = is_never_accessed.all(axis=1)
    has_old_date = is_old_date.any(axis=1)

    # Separate into two groups:
    # 1. All platforms show "Never accessed"
    never_accessed_df = grouped_df[all_never_accessed].copy()

    # 2. At least one old date (>6 months) and no recent activity
    old_access_df = grouped_df[has_old_date & ~has_recent_activity & ~all_never_accessed].copy()

    # Sort both dataframes by User name
    never_accessed_df = never_accessed_df.sort_values(by='User name')
    old_access_df = old_access_df.sort_values(by='User name')

    # Save to Excel with multiple sheets
    with pd.ExcelWriter(output_excel, engine='openpyxl') as writer:
        if not never_accessed_df.empty:
            never_accessed_df.to_excel(writer, sheet_name='never_accessed', index=False)
        if not old_access_df.empty:
            old_access_df.to_excel(writer, sheet_name='6_months', index=False)

# Example usage
input_file = 'export-users.csv'
output_file = 'agents_inactive.xlsx'
process_agents_file(input_file, output_file)

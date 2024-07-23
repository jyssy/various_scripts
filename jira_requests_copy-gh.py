import requests
import pandas as pd

# Jira credentials and API endpoint
jira_url = 'https://access-ci.atlassian.net'
jql_query = 'project = "ATS" AND "access operational support issues[dropdown]" IN ("ACCESS-wide: Collaboration Tools - Google, Confluence, JIRA, Slack, ...", "ACCESS-wide: Communications - News Letters, Public Relations, and Media", "Metrics: Other", "Metrics: Portal", "Metrics: NetSage", "Metrics: Job Performance Data", "Metrics: XDMoD", "Operations: Other", "Operations: Portal", "Operations: CiDeR", "Operations: Tools - Central SysLog, GitHub, Nagios, ReadTheDocs, Usage Tracking, ...", "Operations: APIs - RabbitMQ, RESTful, ....", "Operations: Networking Consulting", "Operations: Networking Tools - CONECTnet, DNS, ...", "Operations: Data Transfer - Globus, ...", "Operations: Security and Trust - SSL Certificates", "Operations: Security Practices - Governance Council, AIRTG, Policies, ...", "Operations: Security Tools - ACCESS IdP, CILogon/COManage, Kerberos, MFA,  ...", "Support: Other", "Support: Portal", "Support: OnDemand", "Some Other Question", "ACCESS-wide: Provider Integration - Infrastructure Integration and Roadmaps", "ACCESS-wide: Ticket System - ACCESS-related Ticketing Systems", "ACCESS-wide: Websites - All ACCESS Portals and Websites", "Support: Pegasus", "Support: Knowledge Base - Community Resources", "Support: Knowledge Base - Affinity Groups", "Support: Knowledge Base - Ask.CI", "Support: Knowledge Base - Documentation", "Allocations: Other", "Allocations: XACCT Admin", "Allocations: XRAS", "Allocations: Portal", "Allocations: APIs", "Allocations: AMIE") ORDER BY created DESC'
jira_api_endpoint = f'{jira_url}/rest/api/3/search'
jira_auth = ('jelambe@iu.edu', ' [token here] ')

# Pagination parameters
start_at = 0
max_results = 5000
all_issues = []

while True:
    # Parameters for the API request
    params = {
        'jql': jql_query,
        'startAt': start_at,
        'maxResults': max_results,
        #'fields': ['ACCESS Responsible Handlers', 'ACCESS Operational Support Issues']
        'fields': ['ACCESS Operational Support Issues']
    }

    # Make the API request
    response = requests.get(jira_api_endpoint, auth=jira_auth, params=params)
    response_data = response.json()

    # Collect issues
    issues = response_data.get('issues', [])
    if not issues:
        break
    all_issues.extend(issues)

    # Update start_at for the next page
    start_at += max_results

# Extract the relevant fields
data = []
for issue in all_issues:
    fields = issue.get('fields', {})
    # handlers = fields.get('ACCESS Responsible Handlers', None)
    support_issues = fields.get('ACCESS Operational Support Issues', None)
    # data.append([handlers, support_issues])
    data.append([support_issues])

# Create a DataFrame
# df = pd.DataFrame(data, columns=['ACCESS Responsible Handlers', 'ACCESS Operational Support Issues'])
# Create a DataFrame
df = pd.DataFrame(data, columns=['ACCESS Operational Support Issues'])
# Process the 'ACCESS Responsible Handlers' column
# handlers_distinct_entries = df[handlers_field_name].value_counts(dropna=True).reset_index()
# handlers_distinct_entries.columns = [handlers_field_name, 'Count']

# Process the 'ACCESS Operational Support Issues' column
support_issues_field_name = 'ACCESS Operational Support Issues'
support_issues_distinct_entries = df[support_issues_field_name].value_counts(dropna=True).reset_index()
support_issues_distinct_entries.columns = [support_issues_field_name, 'Count']
support_issues_distinct_entries = support_issues_distinct_entries.sort_values(by=support_issues_field_name)

# Export results to an Excel file
output_path = 'ticket_counts-api.xlsx'
with pd.ExcelWriter(output_path) as writer:
    # handlers_distinct_entries.to_excel(writer, sheet_name='ACCESS Responsible Handlers', index=False)
    support_issues_distinct_entries.to_excel(writer, sheet_name='ACCESS Operational Support Issues', index=False)

print(f"Results have been exported to {output_path}")
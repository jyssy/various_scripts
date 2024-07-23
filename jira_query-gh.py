import requests
import json

# Jira credentials and API endpoint
jira_url = 'https://access-ci.atlassian.net'
jql_query = 'project = "ATS" AND "access operational support issues[dropdown]" IN ("Metrics: Other", "Metrics: Portal", "Metrics: NetSage", "Metrics: Job Performance Data", "Metrics: XDMoD", "Operations: Other", "Operations: Portal", "Operations: CiDeR", "Operations: Tools - Central SysLog, GitHub, Nagios, ReadTheDocs, Usage Tracking, ...", "Operations: APIs - RabbitMQ, RESTful, ....", "Operations: Networking Consulting", "Operations: Networking Tools - CONECTnet, DNS, ...", "Operations: Data Transfer - Globus, ...", "Operations: Security and Trust - SSL Certificates", "Operations: Security Practices - Governance Council, AIRTG, Policies, ...", "Operations: Security Tools - ACCESS IdP, CILogon/COManage, Kerberos, MFA,  ...", "Support: Other", "Support: Portal", "Support: OnDemand", "Some Other Question", "ACCESS-wide: Provider Integration - Infrastructure Integration and Roadmaps", "ACCESS-wide: Ticket System - ACCESS-related Ticketing Systems", "ACCESS-wide: Websites - All ACCESS Portals and Websites", "Support: Pegasus", "Support: Knowledge Base - Community Resources", "Support: Knowledge Base - Affinity Groups", "Support: Knowledge Base - Ask.CI", "Support: Knowledge Base - Documentation", "Allocations: Other", "Allocations: XACCT Admin", "Allocations: XRAS", "Allocations: Portal", "Allocations: APIs", "Allocations: AMIE") ORDER BY created DESC'
jira_api_endpoint = f'{jira_url}/rest/api/3/search'
jira_auth = ('jelambe@iu.edu', ' [token here] ')


# Initialize variables for pagination
start_at = 0
max_results = 1000  # Number of issues to fetch per request
all_issues = []

while True:
    # Parameters for the API request
    params = {
        'jql': jql_query,
        'startAt': start_at,
        'maxResults': max_results,
        'fields': '*'  # Fetch all fields
    }

    # Make the API request
    response = requests.get(jira_api_endpoint, auth=jira_auth, params=params)
    
    if response.status_code == 200:
        response_data = response.json()
        issues = response_data.get('issues', [])
        if not issues:
            break
        all_issues.extend(issues)

        # Update start_at for the next page
        start_at += max_results
    else:
        print(f"Failed to fetch issues: {response.status_code} - {response.text}")
        break

# Print the results
for issue in all_issues:
    key = issue.get('key')
    fields = issue.get('fields', {})
    summary = fields.get('summary', 'No Summary')
    custom_field_value = fields.get('customfield_10116', 'No Value')
    print(f"Issue Key: {key}, Summary: {summary}, Custom Field Value: {custom_field_value}")

print(f"Total issues fetched: {len(all_issues)}")

# import requests
# from requests.auth import HTTPBasicAuth

# # Jira credentials and endpoint
# jira_api_endpoint = 'https://access-ci.atlassian.net/rest/api/3/field'
# jira_auth = ('jelambe@iu.edu', ' [ token here ] ')

# response = requests.get(jira_api_endpoint, auth=jira_auth)
# fields = response.json()

# # Print all fields
# for field in fields:
#     print(f"ID: {field['id']}, Name: {field['name']}")


import requests
from requests.auth import HTTPBasicAuth

# Jira credentials and endpoint
jira_url = 'https://access-ci.atlassian.net'
custom_field_id = 'customfield_10116'
custom_field_options_endpoint = f'{jira_url}/rest/api/3/field/{custom_field_id}/option'
jira_auth = ('jelambe@iu.edu', ' [token here] ')

# Fetch the custom field options
response = requests.get(custom_field_options_endpoint, auth=jira_auth)

if response.status_code == 200:
    options = response.json()
    for option in options.get('values', []):
        print(f"ID: {option['id']}, Name: {option['value']}")
else:
    print(f"Failed to fetch custom field options: {response.status_code} - {response.text}")

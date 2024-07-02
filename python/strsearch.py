# Python for looking for string in directories

import os
import json

def find_files_by_string(search_string, search_dir):
    found_files = []
    for root, dirs, files in os.walk(search_dir):
        for file in files:
            file_path = os.path.join(root, file)
            try:
                with open(file_path, 'r', errors='ignore') as f:
                    if search_string in f.read():
                        found_files.append(file_path)
            except Exception as e:
                print(f"Error reading file {file_path}: {str(e)}")
    return found_files

# Directory to start search in
search_directory = '.'  # This sets the search to start in the current directory

# String to search for
search_string = 'django_site'

# Find files containing the specified string
result_files = find_files_by_string(search_string, search_directory)

# Get the last directory name from the search directory path
last_dir_name = os.path.basename(os.path.normpath(search_directory))

# Generate the output file name with the last directory name
output_file = f"{last_dir_name}_search_results.json"

# Output the results in a JSON file
with open(output_file, 'w') as f:
    json.dump(result_files, f, indent=4)

print(f"Search results saved to '{output_file}'")

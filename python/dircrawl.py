# Python for looking for file types in directories

import os
import json

def find_files_by_extension(extension, search_dirs):
    found_files = []
    for dir_path in search_dirs:
        for root, dirs, files in os.walk(dir_path):
            for file in files:
                if file.endswith(extension):
                    found_files.append(os.path.join(root, file))
    return found_files

# List of directories to search in
search_directories = [' [ add directory dhere ] ', ' [ add other directory here ] ']

# Extension to search for
file_extension = '.cfm'

# Find files with the specified extension
result_files = find_files_by_extension(file_extension, search_directories)

# Output the results in a JSON file
output_file = 'search_results.json'
with open(output_file, 'w') as f:
    json.dump(result_files, f, indent=4)

print(f"Search results saved to '{output_file}'")
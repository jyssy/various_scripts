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
search_directories = ['DIRECTORY']

# Extension to search for
file_extension = 'WCMS.cfm'

# Find files with the specified extension
result_files = find_files_by_extension(file_extension, search_directories)

# Get the last directory name from the search directory path
last_dir_name = os.path.basename(os.path.normpath(search_directories[0]))

# Generate the output file name with the last directory name
output_file = f"{last_dir_name}_search_results.json"

# Output the results in a JSON file
with open(output_file, 'w') as f:
    json.dump(result_files, f, indent=4)

print(f"Search results saved to '{output_file}'")

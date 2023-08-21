#!/usr/bin/env python3

import os

directory_path = "/pdfs"
# directory_path = "/docx"

if os.path.exists(directory_path) and os.path.isdir(directory_path):
    file_count = len(os.listdir(directory_path))
    print(f"Number of files in the directory: {file_count}")
else:
    print("The specified path is not a valid directory.")

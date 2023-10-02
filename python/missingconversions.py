#!/usr/bin/env python3

import os

pdf_source_dir = '_examfilespdfs/'
docx_output_dir = '_examfilesdocx/'
missing_conversions_file = 'missing_conversions.txt'

# Get a list of all PDF file names
pdf_files = set(os.listdir(pdf_source_dir))

# Get a list of all DOCX file names
docx_files = set(os.listdir(docx_output_dir))

# Find PDF file names that do not exist as DOCX files
missing_conversions = pdf_files - docx_files

# Output the list of missing conversions to a text file
if missing_conversions:
    with open(missing_conversions_file, 'w') as file:
        for missing_pdf in missing_conversions:
            file.write(missing_pdf + '\n')
    print(f"List of missing conversions saved in {missing_conversions_file}")
else:
    print("All PDFs have been converted to DOCX.")


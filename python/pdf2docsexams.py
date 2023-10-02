#!/usr/bin/env python3

import os
from glob import glob
from pdf2docx import Converter

pdf_source_dir = '_examfilespdfs/'
docx_output_dir = '_examfilesdocx/'
conversion_failed_file = 'conversion_failed.txt'

# Create the output directory if it doesn't exist
if not os.path.exists(docx_output_dir):
    os.makedirs(docx_output_dir)

# Get a list of all PDF files in the source directory
pdf_files = glob(os.path.join(pdf_source_dir, '*.pdf'))

# Initialize a list to store the names of PDF files that failed to convert
failed_conversions = []

# Iterate through each PDF file and convert to DOCX
for pdf_file in pdf_files:
    # Create the corresponding output DOCX file name
    docx_file = os.path.join(docx_output_dir, os.path.basename(pdf_file).replace('.pdf', '.docx'))

    # Convert PDF to DOCX
    try:
        cv = Converter(pdf_file)
        cv.convert(docx_file)
        cv.close()
    except Exception as e:
        print(f"Conversion failed for {pdf_file}: {str(e)}")
        failed_conversions.append(os.path.basename(pdf_file))

# Check if any PDFs failed to convert and append their names to the text file
if failed_conversions:
    with open(conversion_failed_file, 'w') as file:
        file.write('\n'.join(failed_conversions))
    print(f"Conversion failed for {len(failed_conversions)} PDFs. The list has been saved in {conversion_failed_file}.")
else:
    print("Conversion completed for all PDFs.")






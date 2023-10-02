#!/usr/bin/env python3

# from pdf2docx import Converter

# pdf_file = 'pdfs/*.pdf'
# docx_file = 'docx/*.docx'

# # converting pdfs to docx
# for pdffile in pdf_file:
#     cv = Converter(pdffile)
#     cv.convert(docx_file) 
#     cv.close()

import os
from glob import glob
from pdf2docx import Converter

# pdf_source_dir = 'pdfsco/'
# docx_output_dir = 'docxco/'

pdf_source_dir = 'pdfs/'
docx_output_dir = 'docx/'

# Create the output directory if it doesn't exist
if not os.path.exists(docx_output_dir):
    os.makedirs(docx_output_dir)

# Get a list of all PDF files in the source directory
pdf_files = glob(os.path.join(pdf_source_dir, '*.pdf'))

# Iterate through each PDF file and convert to DOCX
for pdf_file in pdf_files:
    # Create the corresponding output DOCX file name
    docx_file = os.path.join(docx_output_dir, os.path.basename(pdf_file).replace('.pdf', '.docx'))

    # Convert PDF to DOCX
    cv = Converter(pdf_file)
    cv.convert(docx_file)
    cv.close()

print("Conversion completed for all PDFs.")





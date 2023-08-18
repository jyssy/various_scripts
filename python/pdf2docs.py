#!/usr/bin/env python3

from pdf2docx import Converter

pdf_file = 'pdfs/*.pdf'
docx_file = 'docx/*.docx'

# converting pdfs to docx
for pdffile in pdf_file:
    cv = Converter(pdffile)
    cv.convert(docx_file) 
    cv.close()






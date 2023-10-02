#!/bin/bash

# Directories
pdf_dir="_examfilespdfs"
docx_dir="_examfilesdocx"

# List all PDF and DOCX file names
pdf_files=("$pdf_dir"/*.pdf)
docx_files=("$docx_dir"/*.docx)

# Extract just the filenames without extensions
pdf_names=()
docx_names=()

for pdf_file in "${pdf_files[@]}"; do
    pdf_names+=("$(basename "$pdf_file")")
done

for docx_file in "${docx_files[@]}"; do
    docx_names+=("$(basename "$docx_file")")
done

# Use diff to find missing PDF files
missing_pdf_files=($(diff <(printf "%s\n" "${pdf_names[@]}" | sort) <(printf "%s\n" "${docx_names[@]}" | sort) | grep "<" | sed 's/< //'))

# Output the list of missing PDFs to a text file
if [ ${#missing_pdf_files[@]} -gt 0 ]; then
    echo "PDFs that did not convert to DOCX:"
    for missing_pdf in "${missing_pdf_files[@]}"; do
        echo "$missing_pdf"
    done > missing_conversions.txt
else
    echo "All PDFs converted successfully."
fi

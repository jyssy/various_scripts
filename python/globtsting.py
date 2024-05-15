file_type_txt = "*.txt"

# Loop through each .txt file
for txt_file in glob.glob(file_type_txt):
    # Read the text file
    with open(txt_file, 'r') as file:
        lines = file.readlines()
    
    # Remove the first line
    lines = lines[1:]
    
    # Save the modified content back to the same file
    with open(txt_file, 'w') as file:
        file.writelines(lines)
    
    print(f'File "{txt_file}" modified and saved successfully.')
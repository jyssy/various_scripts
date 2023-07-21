import glob

# Globbing the file extension 
file_type = ".html"
htmlfiles = glob.glob("*" + file_type)

with open("new-file.html", "w") as new_html:
    for file in htmlfiles:
        with open(file) as f:
            for line in f:
                new_html.write(line)
                new_html.write("\n")
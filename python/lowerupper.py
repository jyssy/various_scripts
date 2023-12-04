
# the input of what I want to change

loworup = input("Do you want to make upper or lower case? Please enter only either 'low' or 'upp' or 'cap'. ")
file_path = 'TextToChange.txt'

with open(file_path, 'r') as file:
    content = file.read()

if loworup == 'low':
    # conditional for making lower case
    words = content.lower()
    with open('low.txt', 'w') as file:
        file.writelines(words)
        print(words)

elif loworup == 'upp':
    # conditional for making upper case
    words = content.upper()
    with open('upp.txt', 'w') as file:
        file.writelines(words)
        print(words)

elif loworup == 'cap':
    # conditional for capitalizing the first character
    words = content.capitalize()
    with open('cap.txt', 'w') as file:
        file.writelines(words)
        print(words)

else:
    # printing an error message
    print("Please choose either 'low', 'upp', or 'cap'.")



# the input of what I want to change

loworup = input("Do you want to make upper or lower case? Please enter only either 'low' or 'upp' or 'cap'. ")
words = input("What are the words to change? ")

if loworup == 'low':
    # conditional for making lower case
    words = words.lower()
    with open('low.txt', 'w') as file:
        file.writelines(words)
        print(words)

elif loworup == 'upp':
    # conditional for making upper case
    words = words.upper()
    with open('upp.txt', 'w') as file:
        file.writelines(words)
        print(words)

elif loworup == 'cap':
    # conditional for capitalizing the first character
    words = words.capitalize()
    with open('cap.txt', 'w') as file:
        file.writelines(words)
        print(words)

else:
    # printing an error message
    print("Please choose either 'low', 'upp', or 'cap'.")

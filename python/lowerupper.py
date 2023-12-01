
# the input of what I want to change

loworup = input("Do you want to make upper or lower case? Please enter only either 'lower' or 'upper'. ")
words = input("What are the words to change? ")

if loworup == 'lower':
    # conditional for making upper case
    words = words.lower()
    with open('lower.txt', 'w'):
        print(words)

elif loworup == 'upper':
    # conditional for making upper case
    words = words.upper()
    with open('lower.txt', 'w'):
        print(words)

else:
    # printing the results
    print("Please choose either 'lower' or 'upper'. ")
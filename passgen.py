import string

# get all ascii characters and store them in a list
characters = string.ascii_letters + string.digits + string.punctuation + " "
init = [char for char in characters]

# To handle value, number pairs, transform the list into a dictionary.
init_dict = {}

# store values as keys and as keys, indices
for value, key in enumerate(init):
    init_dict[key] = value


def transformer(letter: str) -> int:
    # define function to use for the encoding
    x = init_dict[letter]
    new_x = ((29 * x) - 17) % len(init)
    return new_x


def transform(entry: str) -> str:
    password = ""
    for letter in entry:
        password += init[transformer(letter)]
    return password


entry = input("Enter any text to be encoded: ")
print("Your password is", transform(entry))

##################
# Sample Output
##################
# Enter any text to be encoded: hashnode
# Your password is S{AS]~qx

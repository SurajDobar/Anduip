
# Write a Python program that prompts the user to input an integer and raises a ValueError 
# exception if the input is not a valid integer.


try:
    user_input = input("Enter an integer: ")
    number = int(user_input)
    print("You entered:", number)
except ValueError:
    raise ValueError("Invalid input! Please enter a valid integer.")

# Output:
# Enter an integer: 423
# You entered: 423

# Enter an integer: fsdf
# Traceback (most recent call last):
#   File "d:\Anudip\labs\python_labs\exceptions_lab.py", line 8, in <module>
#     number = int(user_input)
#              ^^^^^^^^^^^^^^^
# ValueError: invalid literal for int() with base 10: 'fsdf'

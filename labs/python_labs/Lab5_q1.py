# 1. Using input() function take one number from the user and check whether the number is even or odd.

# Take an integer input from the user
num = int(input("Enter a number: "))

# Check if the number is divisible by 2
if num % 2 == 0:
    print("Number",num,"is Even")   # Executed when the number is even
else:
    print("Number",num,"is Odd")    # Executed when the number is odd

# Output
"""
Enter a number: 3
Number 3 is Odd

Enter a number: 4
Number 4 is Even
"""

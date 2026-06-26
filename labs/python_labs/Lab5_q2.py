#2. Using input function take two number and then swap the number

# Take two integer inputs from the user
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

# Store the value of 'a' in a temporary variable
temp = a
# Assign the value of 'b' to 'a'
a = b
# Assign the stored value of 'a' (temp) to 'b'
b = temp

# Display the swapped values
print("After swapping:")
print("First number =", a)
print("Second number =", b)

# Output
"""
Enter first number: 95
Enter second number: 100

After swapping:
First number = 100
Second number = 95
"""

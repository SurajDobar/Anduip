#1. Write Python function  to calculate factorial of number.
num = int(input("Enter a number: "))
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

result = factorial(num)
print("Factorial of", num, "is", result)

"""
Output:
Enter a number: 4
Factorial of 4 is 24
"""
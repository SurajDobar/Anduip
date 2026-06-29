#3.Write Python function  to  print  Fibonacci series
def fibonacci(n):
    a = 0
    b = 1

    print("Fibonacci Series:")
    for _ in range(n):
        print(a, end=" ")
        a, b = b, a + b

# Driver code
n = int(input("Enter the number of terms: "))
fibonacci(n)

"""Output:
Enter the number of terms: 5
Fibonacci Series:
0 1 1 2 3
[0, 1, 1, 2, 3]
"""
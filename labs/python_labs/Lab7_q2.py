# 2. Write a Python program to get the largest and smallest number from a numbers without builtin functions.
list1=[1,2,43,543,6,7,7]

def max_and_min(numbers):
    max=numbers[0]
    min=numbers[0]
    
    for i in range(len(numbers)):
        if max<numbers[i]:
            max=numbers[i]
        if min>numbers[i]:
            min=numbers[i]
    
    return print("Max value:",max,"Min value is:",min)
    

max_and_min(list1)

''' 
Output:
Max value: 543 Min value is: 1
'''
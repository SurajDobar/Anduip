# 1. Write a Python program to sum all the items in a list. 

list1=[2,4,56,7,2]
def sum_list(numbers):
    s=0
    for i in range(len(numbers)):
        #adds the current number of s with the newset number in loop and stores it till end of loop 
        s=s+numbers[i] 
    return s

    
print(sum_list(list1))

''' 
Output:
71
'''


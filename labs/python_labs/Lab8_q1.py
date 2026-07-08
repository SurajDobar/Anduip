# 1. Write a Python program and calculate the mean of the below dictionary. 
# test_dict = {"A" : 6, "B" : 9, "C" : 5, "D" : 7, "E" : 4} 
# Output: 6.2 

def mean_of_dictionary(dict):
    s=0

    for value in dict.values():
        s=s+value
    
    # mean is sum of total number divide by / there total count
    return s /len(dict)

test_dict = {"A" : 6, "B" : 9, "C" : 5, "D" : 7, "E" : 4} 
print(mean_of_dictionary(test_dict))

''' 
Output:
6.2
'''
#!/usr/bin/python

import math 
# Binary Search 
numbers = [11, 27, 32, 38, 42, 64, 87, 91] # ascending order list 
target = 87 
print("Binary search on a list sorted in ascending order") 
print("numbers=", numbers) 
print("target=", target) 
smallest = 0 
biggest = len(numbers) - 1 
found = False 
count = 1 
print("count smallest biggest middle midValue") 
while smallest <= biggest and found == False: 
 middle = math.floor((smallest + biggest) / 2) 
 midValue = numbers[middle] 
 s1 = str(count).rjust(5) 
 s2 = str(smallest).rjust(8) 
 s3 = str(biggest).rjust(7) 
 s4 = str(middle).rjust(6) 
 s5 = str(midValue).rjust(8) 
 print(s1, s2, s3, s4, s5) 
 if target == midValue: 
   # Yes, target has been found 
   print("target has been found") 
   found = True 
 else: 
   if target < midValue: 
     # target is smaller than the middle element 
     biggest = middle - 1 
   else: 
     # target is higher than the middle element 
     smallest = middle + 1 
 count = count + 1 
if found == False: 
   print("target has NOT been found")
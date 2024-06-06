#!/usr/bin/python3
# -*- coding: utf8 -*-

import time
 
 
def fib(n): # write Fibonacci series up to n
   a, b = 0, 1
   while a < n:
      print(a, end=' ')
      a, b = b, a+b
   print()




def fib2(n): # return Fibonacci series up to n
   #result = []
   result = []
  # a, b = 0, 1
   a, b = 0, 1
   while a < n:
     result.append(a)
     a, b = b, a+b
   return result






#def fib2(n): # return Fibonacci series up to n
#   result = []
#   a, b = 0, 1
#   while a < n:
#      result.append(a) # see below
#      a, b = b, a+b
#   return result
#  
# 
# 
# f100 = fib2(100) # call it
# f100 # write the result
print(fib(100))


time.sleep(2)
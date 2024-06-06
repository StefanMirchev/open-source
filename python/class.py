#!/usr/bin/env python3
# -*- coding: utf8 -*-


class MyClass:
  "This is my class"
  a = 10
  print('Stefan Стефан Мирчев')
  def funca():
      print('Hello')
 # return MyClass.funca() 

obj1 = MyClass()
print(obj1.a)        # Output: 10
print(MyClass().a)        # Output: 10
 
obj2 = MyClass()
print(obj1.a + 5)    # Output: 15
# MyClass()
MyClass.funca() 
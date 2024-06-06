#!/usr/bin/python


def print_aaa(): # outer enclosing function
    def printer():  # inner function
        print("Hello")
    return printer()  # this got changed


# another = print_aaa("Hello") # Output: Hello
print_aaa()
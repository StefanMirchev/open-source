#!/usr/bin/python


import time

def print_aaa(): # outer enclosing function
    time.sleep(1)


  #  return printer()  # this got changed


# another = print_aaa("Hello") # Output: Hello
print_aaa()


print ("Start : %s" % time.ctime())
print_aaa()
print ("End   : %s" % time.ctime())
# time.sleep( 0.5 )
# print ("Start 1 " )
# time.sleep( 0.5 )
# print ("Start 2 " )
# time.sleep( 0.5 )
# print ("Start 3 " )
# time.sleep( 0.5 )
# print ("Start 4 " )
# time.sleep( 0.5 )
# print ("Start 5 " )
# time.sleep( 0.5 )
# print ("Start 6 " )
# time.sleep( 0.5 )
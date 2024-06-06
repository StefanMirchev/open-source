#!/usr/bin/python3

def menu():
   print("[1] Option 1")
   print("[2] Option 2")
   print("[0] Exit the program.")


menu()
option = int(input("Enter your option:")) 

while option != 0:
     if option == 1:
        print("option1")
     elif option == 2:
        print("option2")
     else: 
        print("Invalid option.")
     print()
     menu()
     option = int(input("Enter your option: "))
print("Thanks for using this program. Goodbye.")

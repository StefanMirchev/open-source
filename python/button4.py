#!/usr/bin/python3


from tkinter import *

root = Tk()
root.title('Codemy.com - Right Click Menu')
# root.iconbitmap('codemy.ico')
root.geometry ("500x550")

def hello():
    pass

def separator():
    pass

def goodbye():
    pass

def my_popup(e):
  my_menu.tk_popup(e.x_root, e.y_root)




# Create a Menu

my_menu = Menu(root, tearoff=False)
my_menu.add_command(label="Say Hello", command=hello)
my_menu.add_command(label="Pay Goodby", command=goodbye)
my_menu.add_separator()
my_menu.add_command(label="Exit", command=root.quit())



root.bind("<Button-3>", my_popup)

root.mainloop()





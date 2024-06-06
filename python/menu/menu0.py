#!/usr/bin/python3


# from tkinter import *
# m = Tk()
# menu = Menu(m)
# m.config(menu=menu)
# filemenu = Menu(menu)
# menu.add_cascade(label='File', menu=filemenu)
# filemenu.add_command(label='New Text File')
# filemenu.add_command(label='New File...')
# filemenu.add_command(label='New Window')
# filemenu.add_separator()
# filemenu.add_command(label='Open File...')
# filemenu.add_command(label='Open Folder...')
# filemenu.add_command(label='Open Recent')
# filemenu.add_separator()
# filemenu.add_command(label='Save')
# filemenu.add_command(label='Save As...')
# filemenu.add_command(label='Save All')
# filemenu.add_separator()
# filemenu.add_command(label='Exit', command=m.quit)
# helpmenu = Menu(menu)
# menu.add_cascade(label='Help', menu=helpmenu)
# helpmenu.add_command(label='About')
# mainloop()



from tkinter import *
from tkinter import messagebox
from tkinter.filedialog import askopenfilename
import subprocess
from platform import system as platform


root = Tk()

def new_game():
   messagebox.showinfo("New Game", "New Game")
def save_game():
    filename = askopenfilename() #returns an absolute path to the file
    messagebox.showinfo("filename", filename)
def about():
   messagebox.showinfo( "About this page", "About this page")

menu = Menu(root)
root.config(menu=menu)
filemenu = Menu(menu)
menu.add_cascade(label="Game", menu=filemenu)
filemenu.add_command(label="New", command=new_game)
filemenu.add_command(label="Save", command=save_game)
filemenu.add_separator()
filemenu.add_command(label="Exit", command=root.quit)

helpmenu = Menu(menu)
menu.add_cascade(label="Help", menu=helpmenu)
helpmenu.add_command(label="About...", command=about)

#there is a tkinter bug on MacOS that doesn't make the menu work until the 
#pyton looses focus and then refocuses
#the code below focuses the application on finder and then back on python
#as a workaround
if platform() == 'Darwin':
        subprocess.call(["/usr/bin/osascript", "-e", 'tell app "Finder" to set frontmost of process "Finder" to true'])
        subprocess.call(["/usr/bin/osascript", "-e", 'tell app "Finder" to set frontmost of process "python" to true'])


root.mainloop()





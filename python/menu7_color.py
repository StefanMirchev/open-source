#!/usr/bin/python3


import tkinter as tk

def quit_app():
   my_window.destroy ()

def change_colour():
    my_window['bg']='red'


my_window = tk.Tk() 
my_menu = tk.Menu (my_window) 
my_menu.add_command (label='Colour',command=change_colour)
my_menu.add_command (label='Quit', command=quit_app)
my_window.config (menu=my_menu)
my_window.mainloop() 
#!/usr/bin/python3


from Tkinter import *
import Tkinter as tk
import random
screen = tk.Tk(className = "Battle Ship Game" )

screen.geometry("300x300")
screen["bg"] = "white"

board= []
choises = {}
interactions = []

def choice(x,y) :
    global interactions

    interactions.append((x,y))
    print interactions

    return interactions # you don't have to return global variable

def build_board(screen) :
    size = 20
    x = 20
    for __ in range(10):
        y = 20
        for __ in range(10):
            bt = tk.Button(screen, command=lambda a=x,b=y:choice(a, b))
            bt.place( x=x, y=y+size, height=size , width=size )
            board.append(bt)
            y += size
        x += size
    #print x, y

# I don't know why you create board many times - create once.
# Now you have buttons over buttons 
# because you don't remove old buttons before you create new board.
for choosing in range(1,5):
    build_board(screen)

#computer_choises

screen.mainloop()

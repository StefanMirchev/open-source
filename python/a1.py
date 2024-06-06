#!/usr/bin/python3
# -*- coding: utf-8 -*-


# import tkinter modules
from tkinter import *
from tkinter import ttk
import tkinter.font as tkFont
from PIL import ImageTk, Image
from tkcalendar import *
import time


# define self
class tkinterApp(Tk):
    print("aaa") ; time.sleep(1.0)
    def __init__(self,*args, **kwargs):
         
        Tk.__init__(self, *args, **kwargs)
        print("aaa01") ; time.sleep(1.0)
        # creating a container
        container = Frame(self)
        container.pack(side = "top", fill = "both", expand = True)
        print("aaa02") ; time.sleep(1.0)
       # container.grid_rowconfigure(0, weight = 1)
        container.grid_columnconfigure(0, weight = 1)
        print("aaa03") ; time.sleep(1.0)
        # initialising frames to an empty array
        self.frames = {}

        menu_bar = Menu(container)
        main_menu = Menu(menu_bar)
        print("aaa04") ; time.sleep(1.0)
        menu_bar.add_cascade(label="Main Menu", menu=main_menu)
        main_menu.add_command(label="Welcome page", command=lambda: self.show_frame(welcome_frame))
        main_menu.add_command(label="Book a vehicle", command=lambda: self.show_frame(booking_frame))
        main_menu.add_command(label="Register as new user", command=lambda: self.show_frame(register_frame))
        print("aaa05") ; time.sleep(1.0)
        Tk.config(self, menu=menu_bar)

        for F in (welcome_frame, booking_frame, register_frame, calendar_frame):
            frame = F(container, self)
            self.frames[F] = frame
            frame.grid(row = 0, column = 0, sticky = "nsew")

        self.show_frame(welcome_frame)

    def show_frame(self, cont):
        frame = self.frames[cont]
        frame.tkraise()


class welcome_frame(Frame):
    print("bbb") ; time.sleep(1.0)
    def __init__(self, parent, controller):
        Frame.__init__(self, parent)

        welcome = Label(self, text="Hello, please use the menu above to navigate the interface")
        welcome.grid(row=0, column=4, padx=10, pady=10)

class register_frame(Frame):
    print("ccc") ; time.sleep(1.0)
    def __init__(self, parent, controller):

        Frame.__init__(self, parent)

        register_label = Label(self, text="New user - enter your details below to use the Collyer's car park.")
        register_label.grid()


class booking_frame(Frame):
    print("ddd") ; time.sleep(1.0)
    def __init__(self, parent, controller):
        Frame.__init__(self, parent)

        chosen_name = "Steve"


class calendar_frame(Frame):
    print("eee") ; time.sleep(1.0)
    def __init__(self, parent, controller):
        Frame.__init__(self, parent)

    print("fff") ; time.sleep(1.0)
  #  print(booking_frame.chosen_name)
    print("ggg") ; time.sleep(1.0)

app = tkinterApp()
print("hhh") ; time.sleep(1.0)
app.geometry("800x600")
print("iii") ; time.sleep(1.0)
app.title("Collyer's Car Park")
print("kkk") ; time.sleep(1.0)
app.mainloop()
print("lll") ; time.sleep(1.0)

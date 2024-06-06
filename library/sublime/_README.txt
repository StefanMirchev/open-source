^L - Select line ; ^End - End of file ; ^Home - Begin of file 

 1.

 WINDOWS
  {
     "color_scheme": "Packages/Color Scheme - Default/Monokai.sublime-color-scheme",
    "fallback_encoding": "Cyrillic (Windows 1251)",
    "default_encoding": "Cyrillic (Windows 1251)",
    "show_encoding": true,
    "dictionary": "Dictionaries/bg_BG.dic",
    "draw_white_space": "all",
    "font_size": 12,
    "open_files_in_new_window": true,
    "hot_exit": false,
    "remember_full_screen": true,
    "remember_open_files": false,
    "spell_check": false,
    "theme": "Adaptive.sublime-theme",
    "update_check": false,
    "caret_style": "solid",
    "remember_workspace": true,
    "auto_complete": false
}

  Preferences -> Key Bindings 

 { "keys": ["alt+shift+up"], "command": "select_lines", "args": {"forward": false} },
 { "keys": ["alt+shift+down"], "command": "select_lines", "args": {"forward": true} },
 { "keys": ["ctrl+up"], "command": "scroll_lines", "args": {"amount": 1.0 } },
 { "keys": ["ctrl+down"], "command": "scroll_lines", "args": {"amount": -1.0 } },



2.Copy D:\IDISK\SUBLIMETEXT\SUBLIMETEXT.zip\\Packages\Vfp\*.*  C:\Users\ACCO\AppData\Local\Sublime Text 3\Cache


3. WINDOWS 
Chage the default editor used for editing batch files

%SystemRoot%\System32\NOTEPAD.EXE %1
HKEY_CLASSES_ROOT\batfile\shell\edit\command = C:\DISC\HLP\BATEXE\SUBOPEN.exe %1

"%SystemRoot%\System32\Notepad.exe" %1
HKEY_CLASSES_ROOT\VBEFile\Shell\Edit\Command = C:\DISC\HLP\BATEXE\SUBOPEN.exe %1

[HKEY_CLASSES_ROOT\PRG_auto_file\shell\edit\command] = C:\DISC\HLP\BATEXE\SUBOPEN.exe %1


{
   "enabled": true,
    "style": "default",
    "icons": true,
    "ha_style": "filled",
    "icons_all": true,
    "default_keybindings": true,
    "convert_util_path" : "c:/users/mattdmo/bin/convert",
    "color_formats": [
        "white",
        "#FFF", "#FFFF", "#FFFFFF", "#FFFFFFFF",
        "rgb(255, 255, 255)",
        "rgba(255, 255, 255, 1.0)",
        "hsv(0, 0%, 100%)",
        "hsva(0, 0%, 100%, 1.0)",
        "hsl(0, 100%, 100%)",
        "hsla(0, 100%, 100%, 1.0)"
    ],
    "file_exts": [".css", ".sass", ".scss", ".less", ".styl", ".html", ".js", ".tmTheme", ".svg"]
}


#!/usr/bin/python3
# -*- coding: utf8 -*-

import sys
from pkgutil import walk_packages

modules = set()

def callback(name, modules=modules):
    if name.endswith('.__init__'):
        name = name[:-9] + ' (package)'
    if name.find('.') < 0:
        modules.add(name)

for name in sys.builtin_module_names:
    if name != '__main__':
        callback(name)

for item in walk_packages(onerror=callback):
    callback(item[1])

for name in sorted(modules, key=lambda n: n.lower()):
    print (name) 
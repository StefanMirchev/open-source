#!/usr/bin/python3


import subprocess
with open("modules.txt", "w+") as output:
    subprocess.call(["python3", "a1.py"], stdout=output);

# import subprocess
# with open("output.txt", "w+") as output:
#     subprocess.call(["python3", "a1.py"], stdout=output);# 
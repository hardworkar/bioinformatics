#!/usr/bin/python3
import sys
import os

text = open(sys.argv[1], "r").read()
splitted = text.split()
res = float(splitted[splitted.index("mapped") + 1][1:-1])
print(f"SAM/BAM result: {res}%")

if res > 90:
    print("That's OK result, moving on...")
    open(os.path.realpath(os.path.dirname(__file__)) + "/flagstat_result_is.ok", 'w').close()
else:
    print("That's is not OK :(")


#!/usr/bin/python3
import sys

text = open(sys.argv[1], "r").read()
splitted = text.split()
res = float(splitted[splitted.index("mapped") + 1][1:-1])
print(f"SAM/BAM result: {res}%")
print("That's OK result, moving on..." if res > 90 else "That's is not OK :(")

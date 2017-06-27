#!/usr/bin/env python

from scipy import misc
import os
import sys

image = misc.imread(os.path.join('nyan2.bmp'), flatten=0)

column = int(sys.argv[1])

prefix = "209.24."

def main():
    i = 7
    for line in image.tolist():
        i += 1
        if column >= len(line):
            return
        if line[column] == [0, 0, 0]:
        print "route %s%s.0/24 blackhole;" % (prefix, i)

if __name__ == "__main__":
    main()

import sys

"""
This is a Home Row interpreter written in Python. A compiler to x86 assembly written in Python also exists,
but it's nice to be able to run it anywhere, on any processor. You can also just paste this into tio.run, and it will work.

The program should be supplied as input, followed by a line containing only "@END". Follow this with any input given to the program you put in
(yes, there is input in this version).

This interpreter supports an extra command, staying true to the design that all commands should be unshifted characters
on the home row of a Qwerty keyboard. 
The command is g, and it is used for ASCII/Unicode input. The Home Row specification does not include g, so if portability
is a concern, do not use it. There is no other way to use input in the base specification, though, so there really isn't a
substitute for g.

This interpreter also accepts commandline arguments to have the grid be sizes other than 5x5.
Usage:
-s [height] [width]
So if you wanted the grid to be 7 wide and 10 high, you would pass these commandline arguments to this interpreter:
-s 10 7

Note that this feature is probably the least portable thing the interpreter does, since you could in theory write a program
that interprets no change on input to mean the default, but it would be very difficult to write a program that works in
multiple grid sizes. 
"""

storagesize = [5, 5]
code = ""

def interpret():
    global code, storagesize
    storage = [[0] * storagesize[1]] * storagesize[0]
    pointer = [0, 0]
    ip = 0
    looping = False
    inputqueue = ""
    while ip < len(code):
        if code[ip] == "a":
            storage[pointer[0]][pointer[1]] += 1
        elif code[ip] == "s":
            storage[pointer[0]][pointer[1]] -= 1
        elif code[ip] == "d":
            pointer[0] += 1
            if pointer[0] > (storagesize[0] - 1):
                pointer[0] = 0
        elif code[ip] == "f":
            pointer[1] += 1
            if pointer[1] > (storagesize[1] - 1):
                pointer[1] = 0
        elif code[ip] == "j":
            if storage[pointer[0]][pointer[1]] == 0:
                ip += 1
        elif code[ip] == "k":
            print(chr(storage[pointer[0]][pointer[1]]), end = "")
            storage[pointer[0]][pointer[1]] = 0
        elif code[ip] == "l":
            if storage[pointer[0]][pointer[1]] == 0 and not looping:
                ip += 1
                while code[ip] != "l":
                    ip += 1
                ip += 1
                continue
            if not looping:
                looping = True
                ip += 1
                continue
            if looping:
                if storage[pointer[0]][pointer[1]] != 0:
                    ip -= 1
                    while code[ip] != "l":
                        ip -= 1
                    ip += 1
                    continue
                else:
                    looping = False
        elif code[ip] == ";":
            return
        # Extra command added for input.
        # Step 1. Checks the input queue. If it's empty, enqueue the characters of a line of input, plus a newline.
        # Step 2. Dequeues a character from the input queue and sets the pointed cell to its unicode value.
        # The input queue will never be empty when dequeuing since a newline is always inserted at the end.
        # Of course, if input is not given, an error is thrown.
        elif code[ip] == "g":
            if len(inputqueue) == 0:
                inputqueue += input("") + "\n"
            storage[pointer[0]][pointer[1]] = ord(inputqueue[0])
            inputqueue = inputqueue[1:]
        ip += 1
    

if __name__ == "__main__":
    i = 0
    while i < len(sys.argv):
        if sys.argv[i] == "-s":
            i += 1
            storagesize[0] = int(sys.argv[i])
            i += 1
            storagesize[1] = int(sys.argv[i])
        i += 1
    line = ""
    while line != "@END":
        line = input("")
        code += line
    code = code[:-4]
    interpret()
   

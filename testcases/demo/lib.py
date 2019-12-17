import os

def read_file(filename):
    """
    Reading Generic file
    """
    with open(filename) as f:
        s =f.read()
    
    return s

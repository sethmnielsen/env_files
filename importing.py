import numpy as np
import scipy as sp
import numpy.linalg as npl
import holodeck
import os
import sys

try:
    import cupy as cp
except ImportError:
    pass

np.set_printoptions(precision=4, suppress=True, sign=' ', linewidth=100)


def npaddr(x):
    # Returns the memory block address of an array x.
    return x.__array_interface__['data'][0]

def mem_layout(x):
    # Prints the values of x in the order they appear in memory
    v = np.zeros(x.size, dtype=x.dtype)
    for i,n in enumerate(np.nditer(x)):
        v[i] = n
    print(v)
    #print('['+('  '.join(str(n) for n in np.nditer(x)))+']')

def meters(feet):
    return int(feet / 3.2808)

def feet(meters):
    return int(meters * 3.2808)

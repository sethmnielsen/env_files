import numpy as np
import scipy as sp
import numpy.linalg as npl
import holodeck
import os
import sys

np.set_printoptions(precision=4, suppress=True, sign=' ', linewidth=120)


def npaddr(x):
    # Returns the memory block address of an array x.
    return x.__array_interface__['data'][0]

def meters(feet):
    return int(feet / 3.2808)

def feet(meters):
    return int(meters * 3.2808)

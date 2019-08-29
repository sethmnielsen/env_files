import numpy as np
import numpy.linalg as npl
import scipy.linalg as spl
import holodeck
import os
import sys

np.set_printoptions(suppress=True)


def meters(feet):
    return int(feet / 3.2808)

def feet(meters):
    return int(meters * 3.2808)

import numpy as np
import numpy.linalg as npl
import os
import sys

#try:
#    import cupy as cp
#except ImportError:
#    pass

# np.set_printoptions(precision=4, suppress=True, sign=' ', linewidth=100)
np.set_printoptions(linewidth=200)

def npaddr(x: np.ndarray) -> int:
    """ Returns the memory block address of an array x. """
    return x.__array_interface__['data'][0]

def mem_layout(x: np.ndarray) -> np.ndarray:
    """ Prints the values of x in the order they appear in memory. """
    v = np.zeros(x.size, dtype=x.dtype)
    for i,n in enumerate(np.nditer(x)):
        v[i] = n
    print(v)

def dec2frac(num, epsilon=1e-4, max_iter=20):
    d = [0, 1] + ([0] * max_iter)
    z = num
    n = 1
    t = 1
    D = []
    N = []

    while num and t < max_iter and abs(n/d[t] - num) > epsilon:
        t += 1
        z = 1/(z - int(z))
        d[t] = d[t-1] * int(z) + d[t-2]
        # int(x + 0.5) is equivalent to rounding x.
        n = int(num * d[t] + 0.5)

        D.append(d[t])
        N.append(n)

    D = np.array(D)
    N = np.array(N)
    with np.printoptions(formatter={'int': lambda x: "{:>3}".format(x)}):
        print(f'N: {N}')
        print(f'D: {D}')

    return N, D

import math
import time
from random import random


delta = 1e-6

def leibniz(n: int) -> float:
    i = 0
    u = 4
    while i < n:
        i += 1
        u += 4 * (-1)**i / (2*i+1)
    return u

def leibniz_estimate(precision: float):
    i = 0
    u = 4
    while abs(u - math.pi)> precision:
        i += 1
        u += 4 * (-1)**i / (2*i+1)
    return { "n":i, "pi": u}


def euler(n: int):
    i = 0
    s = 0
    while i < n:
        i += 1
        s += 6 / i**2
    return math.sqrt(s)

def euler_estimate(precision: float):
    i = 0
    s = 0
    v = 0
    while abs(v - math.pi)> precision:
        i += 1
        s += 6 / i**2
        v = math.sqrt(s)
    return { "n":i, "pi": v}

def woon(n: int):
    i = 0
    s = 1
    while i < n:
        i += 1
        a = math.sqrt(1 + s**2)
        s += a
    return 2**(n+1) / a

def woon_estimate(precision: float):
    i = 0
    p = 2
    s = 1
    w = 2
    while abs(w - math.pi)> precision:
        i += 1
        a = math.sqrt(1 + s**2)
        s += a
        p *= 2
        w = p/a
    return { "n":i, "pi": w}

def fraction_continue(n):
    d = 1
    while n >= 1:
        d = 1/n + 1/d
        n -= 1
    return 2 + 2/d

def fractions_continues_estimate(precision: float):
    i = 1
    f = 3
    while abs(f - math.pi)> precision:
        i += 1
        f = fraction_continue(i)
    return { "n":i, "pi": f}

def monte_carlo(N: int)-> float:
    nb = 0
    i = N
    while i > 0:
        i -= 1
        if(random()**2 + random()**2 <1):
            nb += 1
    return 4*nb/N    

def monte_carlo_simulations():
    t = 10
    N = 100
    for i in range(0,3):
        s = 0
        for k in range(0,t):
            s += monte_carlo(N)
        print(f"La valeur approximative de pi avec {N} points est", round(s/t, 7))
        N *=10


def display_line(suite, rank, estimate, duration):
    print("{0: <20}  {1: >7}  {2: <14}  {3: <15}".format(suite, rank, round(estimate,7), round(duration*1e-9, 4)))

def run_simulations(precision: float):
    print("{0: <20}  {1: <7}  {2: <14}  {3: <15}".format("Suite", "Rang", "Approximation", "Temps de calcul"))

    start = time.monotonic_ns()
    r = leibniz_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Leibniz", r["n"], r["pi"], end - start)
    
    start = time.monotonic_ns()
    r = euler_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Euler", r["n"], r["pi"], end - start)

    start = time.monotonic_ns()
    r = woon_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Woon", r["n"], r["pi"], end - start)

    start = time.monotonic_ns()
    r = fractions_continues_estimate(precision)
    end = time.monotonic_ns()
    display_line("Fractions continues", r["n"], r["pi"], end - start)

    monte_carlo_simulations()

run_simulations(1e-6)
import math

delta = 1e-6

def leibniz():
    i = 0
    u = 4
    while abs(u - math.pi)> delta:
        i += 1
        u += 4 * (-1)**i / (2*i+1)
    print(i, u)

def euler():
    i = 0
    s = 0
    v = 0
    while abs(v - math.pi)> delta:
        i += 1
        s += 6 / i**2
        v = math.sqrt(s)
    print(i, v)
    
def woon():
    i = 0
    p = 2
    s = 1
    w = 2
    while abs(w - math.pi)> delta:
        i += 1
        a = math.sqrt(1 + s**2)
        s += a
        p *= 2
        w = p/a
    print(i, w)



leibniz()
euler()
woon()
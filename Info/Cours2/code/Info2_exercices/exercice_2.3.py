import math
import time
# Somme des diviseurs stricts (i.e. différents de l'entier)

def sum_1(n):
    s = 0
    d = 1
    while d < n:
        if n % d == 0:
            s += d
        d += 1
    return s

def sum_2(n):
    s = 0
    if n>1:
        s = 1
        d = 2
        e = math.sqrt(n)
        while d < e:
            if n % d == 0:
                s += d
                s += n // d
            d += 1
        # Gestion de la racine carrée
        if n%d == 0 and d == n//d :
            s += d
    return s

n = int(input("n? "))

# On chronomètre S2
start = time.monotonic_ns()
s2 = sum_2(n)
end = time.monotonic_ns()
t2 = (end - start)
print("S2 =", s2, "en", t2, "ns")

# On chronomètre S1
start = time.monotonic_ns()
s1 = sum_1(n)
end = time.monotonic_ns()
t1 = (end - start)
print("S1 =", s1, "en", t1, "ns")

print("t1 / t2 =", int(t1 / t2))

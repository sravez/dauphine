# Somme des diviseurs stricts

from math import sqrt

n = int(input("Entrez un entier n : "))

s = 0
if n>1:
    s = 1
    d = 2
    e = sqrt(n)
    while d < e:
        if n % d == 0:
            s += d
            s += n // d
        d += 1
    # Gestion de la racine carrée
    if n%d == 0 and d == n//d :
        s += d

print("Somme des diviseurs stricts", s)
if s == 1:
    print(n, "est un nombre premier")
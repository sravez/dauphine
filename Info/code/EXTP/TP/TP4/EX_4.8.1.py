from random import random
from math import floor

nb = 10

def tirage(vmin=0, vmax=20):
    i = 0
    inf = vmax
    sup = vmin
    sum = 0
    while i < nb:
        i += 1
        v = vmin + floor((vmax - vmin + 1)*random())
        sum += v
        inf = min(inf, v)
        sup = max(sup, v)
    print(inf, sum/nb, sup)


tirage(vmin=0, vmax=20)
tirage(
    vmin = int(input("Valeur minimale :")),
    vmax = int(input("Valeur maximale :"))
)
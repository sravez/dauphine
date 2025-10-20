from random import randint
from functools import reduce

def TabAlea(n, a, b) -> list[int]:
    return [ randint(a,b) for i in range(0,n) ]

def TabProduit_1(T) -> int:
    p = 1
    i = 0
    while i<len(T) and p != 0 :
        p *= T[i]
        i += 1
    return p

def TabProduit_2(T) -> int:
    return reduce(lambda x,y: x*y, T)

def TabProduit_3(T) -> int:
    p = 1
    for i in range(0, len(T)):
        p *= T[i]
    return p

if __name__ == "__main__":
    t = TabAlea(3,1,10)
    print(t)
    print(TabProduit(t))
    print(TabProduit_2(t))
    print(TabProduit_3(t))

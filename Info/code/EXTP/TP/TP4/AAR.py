from random import random
from math import floor

def tirage()-> int:
    return floor(2 * random())

def AleatoireAvecRepetitions(n: int):
    nb = 0
    while n > 0:
        nb += 1
        if tirage() == 1:
            n -= 1
    return { "last": tirage(), "nb" : nb}

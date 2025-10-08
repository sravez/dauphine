from random import uniform, random

def almost_pi(n: int)-> float:
    nb = 0
    i = n
    while i > 0:
        i -= 1
        if((uniform(-1,1)**2 + uniform(-1,1)**2)<1):
            nb += 1
    return 4*nb/n

print(almost_pi(50))
print(almost_pi(500))
print(almost_pi(5000))
print(almost_pi(50000))
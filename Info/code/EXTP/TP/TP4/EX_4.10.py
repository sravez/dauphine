from random import uniform, random

def monte_carlo(n: int)-> float:
    nb = 0
    i = n
    while i > 0:
        i -= 1
        if uniform(-1,1)**2 + uniform(-1,1)**2 < 1:
            nb += 1
    return 4*nb/n

def monte_carlo2(n: int)-> float:
    nb = 0
    i = n
    while i > 0:
        i -= 1
        if random()**2 + random()**2 < 1:
            nb += 1
    return 4*nb/n

print("monte_carlo(50)    :", monte_carlo(50))
print("monte_carlo(500)   :", monte_carlo(50))
print("monte_carlo(5000)  :", monte_carlo(50))
print("monte_carlo(50000) :", monte_carlo(50))

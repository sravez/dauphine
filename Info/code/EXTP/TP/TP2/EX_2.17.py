from math import inf

n = -1
while n < 0:
    n = int(input("Nombre d'entiers : "))

previous = -inf
sorted = True
while n > 0:
    i = int(input("Entrez un entier : "))
    if i < previous:
        sorted = False
    previous = i
    n -= 1

if sorted:
    print("Les entiers sont triés de façon croissante")
else :
    print("Les entiers ne sont pas triés de façon croissante")
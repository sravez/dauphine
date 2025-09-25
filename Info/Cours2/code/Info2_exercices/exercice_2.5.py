import math

# Somme des diviseurs stricts
def sum_of_strict_dividers(n):
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

# Entier parfait ?
def is_perfect(n):
    return 0 < n == sum_of_strict_dividers(n)

i = int(input("Début ? "))
j = int(input("Fin ? "))
v = 1
if(i != j):
    v = int((j-i)/abs(j-i))
# Parcours de l'intervalle
while i != (j+v) :
    if is_perfect(i):
        print(i, "est un entier parfait")
    i += v
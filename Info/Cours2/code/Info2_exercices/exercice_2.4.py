# Vérification si un entier est parfait

# Un entier est parfait s'il est égal à la somme de ses diviseurs stricts
# (c'est-à-dire différents de n.

def is_perfect(n):
    # Somme des diviseurs
    s = 0
    # Diviseur en cours
    d = 1
    while d<n:
        if n%d == 0:
            s += d
        d += 1
    # 0 n'est pas un nombre parfait
    return 0 < n == s


n = int(input("Entier à vérifier ? "))
if is_perfect(n):
    print(n, "est un entier parfait.")
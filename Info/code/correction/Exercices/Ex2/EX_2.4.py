# Vérification si un entier est parfait

# Un entier est parfait s'il est égal à la somme de ses diviseurs stricts
# (c'est-à-dire différents de n.

from strict_factors import is_perfect

i = int(input("Entier à vérifier ? "))
if is_perfect(i):
    print(f"{i} est un entier parfait.")
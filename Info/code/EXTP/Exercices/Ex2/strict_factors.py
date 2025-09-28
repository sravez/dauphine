from math import sqrt

# Somme des diviseurs stricts

"""
Un diviseur de n est strict s'il est différent de n.
1 ne possède donc pas de diviseur strict et 1 est un
diviseur strict de tous les autres entiers.

Un entier est parfait s'il est égal à la somme de ses
diviseurs stricts. 6 est un entier parfait : 6 = 1+2+3.
"""
# ---------------------------------------------------------------

def sum_basic(n: int) -> int:
    """Somme des diviseurs stricts (basique)

        Args:
            n: entier à analyser
        Returns:
            La somme des diviseurs stricts de n
        """
    s = 0
    d = 1
    while d < n:
        if n % d == 0:
            s += d
        d += 1
    return s

# ---------------------------------------------------------------

def sum_of_strict_factors(n: int) -> int:
    """Somme des diviseurs stricts (optimisée)

    Version optimisée de la fonction sum_basic qui

    Args:
        n: entier à analyser
    Returns:
        La somme des diviseurs stricts de n
    """
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
    return s

# ---------------------------------------------------------------

def is_perfect(n: int) -> bool:
    # 0 n'est pas un nombre parfait
    return 0 < n == sum_of_strict_factors(n)


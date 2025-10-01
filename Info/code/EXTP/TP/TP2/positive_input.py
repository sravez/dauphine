def get_positive_integer() -> int:
    p = "Saisissez un entier positif : "
    n = -1
    while n < 0:
        n = int(input(p))
        p = "Erreur. Saisissez un entier positif : "
    return n

k = get_positive_integer()
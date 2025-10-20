def somme_des_entiers(n: int) -> int :
    s = 0
    for i in range(1, n+1):
        s += i
    return s

def get_integer() -> int:
    r = 0
    while r < 1:
        r = int(input("Entrez un entier strictement positif : "))
    return r

n = get_integer()

print(f"Somme des entiers de {1} à {n} :", somme_des_entiers(n))
print(f"Somme des entiers de {1} à {n} :", sum(range(1, n+1)))


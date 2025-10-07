# Calcul du PGCD

# La première méthode est beaucoup plus efficace

def pgcd(a: int, b:int) -> int:
    r  = a % b
    while r > 0:
        a = b
        b = r
        r = a % b
    return b

def pgcd2(a: int, b: int) -> int:
    for d in range(min(a,b),0,-1):
        if a%d == 0 and b%d == 0:
            break
    return d


n1 = int(input("Premier nombre  : "))
n2 = int(input("Deuxième nombre : "))

print(f"Le pgcd de {n1} et {n2} est", pgcd(n1,n2))
print(f"Le pgcd de {n1} et {n2} est", pgcd2(n1,n2))

def pgcd(a: int, b:int) -> int:
    r  = a % b
    while r > 0:
        a = b
        b = r
        r = a % b
    return b

n1 = int(input("Premier nombre  : "))
n2 = int(input("Deuxième nombre : "))

print(f"Le pgcd de {n1} et {n2} est", pgcd(n1,n2))
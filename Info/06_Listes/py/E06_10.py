from math import ceil, log10

def display(n: int, p: int):
    l = [ 7 * i for i in range(1,n+1)]
    m = 0
    pad = ceil(log10(n * 7))
    for i in l:
        print(f"{i:{pad}d}", end="")
        if i % p == 0:
            m +=1
            print("")
        else:
            print(" ; ", end="")
    if i % p != 0:
        print("")
    print(f"Vous avez affiché {m} multiples de {p}")


def display_2(n: int, p:int):
    l = [ 7 * i for i in range(1,n+1)]
    k: int  = p
    if p % 7 == 0:
        k = p // 7
    
    pad = ceil(log10(n * 7))
    for i in range(0, n, k):
        print( " ; ".join([f"{str(m):>{pad}}" for m in l[i : i+k] ]) )
    print(f"Vous avez affiché {n // k} multiples de {p}")


n = int(input("Combien de multiples de 7 voulez-vous afficher ? "))
print("Vous irez à la ligne après chaque multiple de...")
p = int(input("(nombre strictement positif svp) : "))

display(n,p)
display_2(n,p)


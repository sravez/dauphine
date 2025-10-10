from random import randint

nb = 10

def tirage(vmin=0, vmax=20):
    i = 0
    # On initialise inf et sup pour être certain qu'elles seront
    # égales à v1 après la première itération
    inf = max(vmin,vmax)
    sup = min(vmin,vmax)
    sum = 0
    # On gère l'inversion éventuelle de vmin et vmax
    vmin = sup
    vmax = inf

    while i < nb:
        i += 1
        v = randint(vmin, vmax)
        sum += v
        inf = min(inf, v)
        sup = max(sup, v)
    return { "inf": inf, "moy": sum/nb, "sup": sup}


def display_result(r):
    print(f"Minimum : {r["inf"]} ; Moyenne : {r["moy"]} ; Maximum {r["sup"]}")

display_result(tirage(vmin=0, vmax=20))

if(int(input("Voulez-vous changer les bornes (1/0) : ")) == 1):
    display_result(
        tirage(
            vmin = int(input("Borne 1 :")),
            vmax = int(input("Borne 2 :"))
        )
    )
import random

def get_horses_count(vmin, vmax) ->int:
    n = -1
    error_str = ""
    while n< vmin or n > vmax:
        n = int(input(f"{error_str}Nombre de cheveaux (entre {vmin} et {vmax}) : "))
        error_str = "ERREUR - "
    return n

def get_three(n: int):
    horses = []
    for i in range(1,n+1):
        horses.append(i)
    return random.sample(horses, k=3)

def get_tierce(n: int):
    r = []
    k = 3
    while len(r) < k:
        h = random.randint(1,n)
        if(r.count(h)==0):
            r.append(h)
    return r

        
    
def print_odds():
    c = get_horses_count(4,20)
    print(f"Vous avez 1 chance sur {c} de trouver le cheval gagnant")
    p = 3
    if c < 8:
        p = 2
    print(f"Vous avez {p} chances sur {c} de trouver le cheval placé")
    print(f"Vous avez 1 chance sur {c * (c-1) * (c-2)} de trouver le tiercé dans l'ordre")
    print(f"Vous avez 1 chance sur {int(c * (c-1) * (c-2)/6)} de trouver le tiercé dans le désordre")

    print(get_three(c))
    print(get_tierce(c))

print_odds()
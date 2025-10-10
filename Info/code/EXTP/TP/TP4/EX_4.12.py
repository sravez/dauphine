import random

def get_horse_count(vmin, vmax) ->int:
    n = -1
    error_str = ""
    while n< vmin or n > vmax:
        n = int(input(f"{error_str}Nombre de chevaux (entre {vmin} et {vmax}) : "))
        error_str = "ERREUR - "
    return n


def get_three_horses(n: int)-> list[int]:
    r = []
    k = 3
    while len(r) < min(k,n):
        h = random.randint(1,n)
        if(r.count(h)==0):
            r.append(h)
    return r
           
def print_odds(c: int)-> None:
    print(f"Vous avez 1 chance sur {c} de trouver le cheval gagnant.")
    p = 3
    if c < 8:
        p = 2
    print(f"Vous avez {p} chances sur {c} de trouver le cheval placé.")
    print(f"Vous avez 1 chance sur {c * (c-1) * (c-2)} de trouver le tiercé dans l'ordre.")
    print(f"Vous avez 1 chance sur {int(c * (c-1) * (c-2)/6)} de trouver le tiercé dans le désordre.")


def get_bet_count()-> int:
    n = 0
    error_str = ""
    while n !=1 and n!=3:
        n = int(input(f"{error_str}Sur combien de chevaux pariez-vous ? (1 ou 3) : "))
        error_str = "ERREUR - "
    return n

def get_bet(n: int, p: int)-> list[int]:
    b = []
    for i in range(1, p+1):
        b.append(int(input(f"- Cheval {i} (entre 1 et {n}) : ")))
    return b


def print_result(n: int, res: list[int], bet: list[int])-> None:

    if len(bet) == 1:
        if bet[0] == res[0]:
            print("Bravo ! Vous avez trouvé un cheval placé et il est gagnant")
        elif bet[0]==res[1] or (n>=8 and bet[0]==res[2]):
            print("Bravo ! Vous avez trouvé un cheval placé")
        else:
            print("Perdu !")
    else:
        won = True
        order = True
        h = 0
        while won and h < 3:
            won = won and (res.count(bet[h]) > 0)
            order = order and (bet[h] == res[h])
            h += 1
        if won:
            if order:
                print("Vous avez trouvé le tiercé dans l'ordre")
            else:
                print("Vous avez trouvé le tiercé dans le désordre")
        else:
            print("Perdu !")


def bet_simulation()-> None:
    n = get_horse_count(4, 20)
    print_odds(n)
    
    p = get_bet_count()
    b = get_bet(n, p)
    
    r = get_three_horses(n)
    print(f"\nLe tiercé gagnant est : {r[0]} - {r[1]} - {r[2]}\n")

    print_result(n, r, b)


bet_simulation()

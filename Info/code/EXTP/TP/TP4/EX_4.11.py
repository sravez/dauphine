from random import randint
from math import ceil

def get_int(prompt: str, vmin: int, vmax: int)-> int:
   
    error_str = ""

    interval = f"({vmin}-{vmax})"
    if vmax < 0:
        interval = f"(≥ {vmin})"
    i = -1
    while i< vmin or (i > vmax and vmax>=0):
        i = int(input(f"{error_str}{prompt} {interval} : "))
        error_str = "ERREUR DE SAISIE\n"
    return i


def play(budget:int)-> int:
    bet = get_int("\nCombien voulez-vous miser ?", 1, budget)
    num = get_int("Sur quel numéro ?", 0, 49)

    res = randint(0,49)
    print("\tRésultat :",res)
    if num == res:
        print("\tBon numéro !")
        return 2 * bet
    elif num % 2 == res % 2 :
        print("\tBonne couleur !")
        return ceil(bet/2)
    else:
        print("\tPerdu !")
        return -bet


def start():
    budget = get_int("Quel est votre budget ?", 0, -1)
    while budget > 0:
        print("")
        if get_int("Voulez-vous jouer ?", 0, 1) == 1:
            budget += play(budget)
            print("Votre cagnotte :", budget)
            if budget == 0:
                print("Vous êtes ruiné !")
                break
        else:
            break

start()
def get_number(p: str)-> float:
    '''
    Demande à l'utilisateur de saisir un nombre.
    Si la valeur saisie n'est pas un nombre, l'utilisateur
    doit entrer une nouvelle valeur.
    '''

    ok = False
    while not ok:
        s = str(input(p))
        try:
            f = float(s)
            ok = True
        except:
            print("Saisissez un nombre !")
    return f


def get_numbers(n: int)-> list[float]:
    '''
    Appelle get_number() n fois et renvoie une liste de n nombres.
    '''

    pad = len(str(n))
    numbers = []
    for i in range(1, n+1):
        numbers.append(get_number(f"Nombre {i: >{pad}}/{n} : "))
    return numbers

    
n = int(input("Nombre d'éléments dans la liste : "))
numbers = get_numbers(n)
print(numbers)


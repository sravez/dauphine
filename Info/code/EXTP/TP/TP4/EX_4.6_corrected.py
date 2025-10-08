def manage_zeros(a: int, b:int):
    if a * b == 0:
        if a + b == 0:
            return -1
        else:
            return max(a,b)
    else:
        return 0


def pgcd_par_diviseurs(a: int,b: int)-> int:
    '''Cherche le plus grand diviseur commun de manière
    décroissante en commençant par b'''
    a = abs(a)
    b = abs(b)
    if a * b == 0:
        if a + b == 0:
            # pgcd(0,0) n'existe pas
            return 0
        else:
            return max(a,b)
    else:
        i = min(a,b)
        while i>1:
            if a%i == 0 and b%i == 0:
                break
            i -= 1
        return i

def pgcd_par_differences(a: int,b: int)-> int:
    '''calcule le pgcd par l algorithme des differences :
    Si un nombre est un diviseur de 2 autres nombres a et b
    (avec a>b), alors il est aussi un diviseur
    de leur difference a-b'''
    a = abs(a)
    b = abs(b)
    diff = abs(a - b)
    while diff > 0:
        a = diff
        diff = abs(a - b)
        b = a
    return a

def pgcd_par_euclide(a,b):
    '''calcule le pgcd par l'algorithme d'Euclide :
    renvoie le reste de la division euclidienne de a par b ;
    si le reste est égal à 0, alors le PGCD est égal à b,
    sinon a reçoit la valeur de b et b reçoit le reste
    et réitérer'''
    a = abs(a)
    b = abs(b)
    z = manage_zeros(a,b)
    if a * b == 0:
        if a + b == 0:
            # pgcd(0,0) n'existe pas
            return 0
        else:
            return max(a,b)
    else:
        r = a % b
        while r != 0:
            a = b
            b = r
            r = a % b
        return b

tests = [
    [36,15,3],
    [40,20, 20],
    [13,7,1],
    [4,0,4],
    [0,0,0]
]

for t in tests:
    print(f"pgcd({t[0]},{t[1]}) = {t[2]}")
    print( "    div     :", pgcd_par_diviseurs(t[0],t[1])== t[2])
    print( "    div  (r):", pgcd_par_diviseurs(t[1],t[0])== t[2])
    print( "    diff    :", pgcd_par_differences(t[0],t[1])== t[2])
    print( "    diff (r):", pgcd_par_differences(t[1],t[0])== t[2])
    print( "    eucl    :", pgcd_par_euclide(t[0],t[1])== t[2])
    print( "    eucl (r):", pgcd_par_euclide(t[1],t[0])== t[2])

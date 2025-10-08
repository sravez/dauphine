def pgcd_par_diviseurs(a: int,b: int)-> int:
    '''Cherche le plus grand diviseur commun de manière
    décroissante en commençant par b'''
    a = abs(a)
    b = abs(b)
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
    r = a % b
    while r != 0:
        a = b
        b = r
        r = a % b
    return b

print(pgcd_par_diviseurs(36,15))
print(pgcd_par_differences(36,15))
print(pgcd_par_euclide(36,15))

print(pgcd_par_diviseurs(15,36))
print(pgcd_par_differences(15,36))
print(pgcd_par_euclide(15,36))

print(pgcd_par_diviseurs(40,20))
print(pgcd_par_differences(40,20))
print(pgcd_par_euclide(40,20))

print(pgcd_par_diviseurs(13,7))
print(pgcd_par_differences(13,7))
print(pgcd_par_euclide(13,7))

print(pgcd_par_diviseurs(4,0))
print(pgcd_par_differences(4,0))
print(pgcd_par_euclide(4,0))
def pgcd_par_diviseurs(a;b):
    '''calcul les diviseurs communs à a et b (avec a >b) et
    renvoie plus grand diviseur commun'''
    i = 0
    while i<b:
        if a%i = 0 and b%i = 0 and i > pgcd:
            pgcd = i
        i = i + 1
    print(pgcd)

def pgcd_par_differences(a;b):
    '''calcule le pgcd par l algorithme des differences:
    si un nombre est un diviseur de 2 autres nombres a et b
    (avec a>b), alors il est aussi un diviseur
    de leur difference a-b'''
    diff = a - b
    while diff > 0:
        a = diff
        diff = a - b
    print a

def pgcd_par_euclide(a;b)
    '''calcule le pgcd (avec a>b) par l'algorithme d'Euclide :
    renvoie le reste de la division euclidienne de a par b ;
    si le reste est égal à 0, alors le PGCD est égal à b,
    sinon a reçoit la valeur de b et b reçoit le reste
    et réitérer'''
    reste = a // b
    if reste !=0:
        a = b
        b = reste
        reste a // b
        continue
    print(b)

print(pgcd_par_diviseurs(36,15))
print(pgcd_par_differences(36,15))
print(pgcd_par_euclide(36,15))
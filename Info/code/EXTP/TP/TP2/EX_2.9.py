# 1. # =  commentaires
# 2. d = b*b - 4ac => d = b*b - 4*a*c
# 3. Cette instruction n'est pas nécessaire mais permet
#    de détecter d'éventuelles erreurs.
# 4. sqrt inconnu => from math import sqrt
# 5. On peut calculer
#      a*x^2 + b*x +c est vérifier que c'est nul
#      ou x1 + x2 = -b/a et x1 * x2 = c/a
#    Corrections :
#      x1 = (-b + sqrt(d))/(2*a)
#      x2 = (-b - sqrt(d))/(2*a)
#      Solution unique : -b/(2*a)
#      Solution complexe : -b/(2*a) + i sqrt(-d)/(2*a)

from math import sqrt

# Ce programme calcule les solutions
#  d'une équation du second degré
a = int(input("Entrez a : "))
b = int(input("Entrez b : "))
c = int(input("Entrez c : "))
d= b*b - 4*a*c
print("La valeur de delta est", d)
# Cas où il y a deux solutions réelles
if d > 0:
    x1 = (-b + sqrt(d))/(2*a)
    x2 = (-b - sqrt(d))/(2*a)
    if (a*x1*x1 + b*x1 +c !=0 or a*x2*x2 + b*x2 +c !=0):
        print("Erreur")
    else:
        print("Il y a deux racines réelles : x1 =", x1, "et x2 =", x2)
# Cas où il y a une seule solution réelle
elif d==0 :
    print("Il y une unique racine réelle : x =", -b/(2*a))
# Cas où il n'y aucune solution réelle
else:
    print("Il y a deux racines complexes distinctes, z1 =", -b/(2*a),"+ i x",sqrt(-d)/(2*a), "et z2 =", -b/(2*a),"- i x",sqrt(-d)/(2*a),"i")
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(languages: codly-languages)
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

= TD2

== Exercice 2.9 - Équation du second degré

=== Code originel

```python
# Ce programme calcule les solutions
#  d'une équation du second degré
a = int(input("Entrez a : "))
b = int(input("Entrez b : "))
c = int(input("Entrez c : "))
d= b*b - 4ac
print("La valeur de delta est", d)
# Cas où il y a deux solutions réelles
if d > 0:
    print("Il y a deux racines réelles : x1 =", -b + sqrt(d)/2*a, "et x2 =", -b - sqrt(d)/2*a)
# Cas où il y a une seule solution réelle
elif d==0 :
    print("Il y une unique racine réelle : x =", -b/2*a)
# Cas où il n'y aucune solution réelle
else:
    print("Il y a deux racines complexes distinctes, z1 =", -b/2*a,"+ ",sqrt(d), "i et z2 =", -b/2*a,"-",sqrt(d),"i")
```

=== 2.9.1

Il s'agit de commentaires qui expliquent le fonctionnement du programme et peuvent aider à la compréhension, notamment pour les autres lecteurs ou quand on revient sur son code plus tard.

=== 2.9.2

On rencontre une *`SyntaxError`* car `4ac` (ligne 8) est interprété comme un nom de variable qui ne peut commencer par un chiffre. Le code comporte une seconde erreur au même endroit car l'opérateur de multiplication (`*`) ne peut être omis ; Python interprèterait `ac` comme un nom de variable qui n'existe pas.

Il faut donc remplacer `4ac` par `4*a*c`

=== 2.9.3

L'instruction `print("La valeur...")` n'est pas nécessaire mais contribue à la vérification du bon fonctionnement du programme.

=== 2.9.4

On rencontre l'erreur *`NameError: name 'sqrt' is not defined`* qui signifie que la fonction racine carrée (`sqrt`) n'est pas connue. Il faut donc l'importer via `import math` (qui importe toutes les fonctions mathématiques) ou `from math import sqrt`. 

=== 2.9.5

Le programme s'exécute et annonce 4 et 12 comme racines réelles.

On peut vérifier que les solutions annoncées sont correctes en s'assurant (pendant la phase de conception) que `a*x*x + b*x + c` est nul pour les deux valeurs :

#codly(offset:8)
```python
if d > 0:
    x1 = -b + sqrt(d)/2*a
    x2 = -b - sqrt(d)/2*a
    if (a*x1*x1 + b*x1 +c !=0 or a*x2*x2 + b*x2 +c !=0):
        print("Erreur dans le calcul des racines réelles")
    else:
        print("Il y a deux racines réelles : x1 =", x1, "et x2 =", x2)
...
```

Les solutions annoncées sont donc fausses alors que le déterminant est correct. Les bonnes formules de calcul sont :

#codly(offset:8)
```python
if d > 0:
    x1 = (-b + sqrt(d))/(2*a)
    x2 = (-b - sqrt(d))/(2*a)
```

=== 2.9.6

On rencontre l'erreur *`ValueError: math domain error`* car on passe une valeur strictement négative à `sqrt`. On remplace donc `d` par `-d` (et on effectue les mêmes corrections qu'au point précédent) dans le calcul des solutions complexes :

#codly(offset:15)
```python
print("Il y a deux racines complexes distinctes, z1 =", -b/(2*a),"+ ",sqrt(-d)/(2*a), "i et z2 =", -b/(2*a),"-",sqrt(-d)/(2*a),"i")
```

=== 2.9.7

On peut essayer $(a,b,c) = (2,-4,2)$ qui correspond à la racine double 1 alors que le programme indique 4, il faut effectuer la même correction que dans les cas précédents en remplaçant `b/2*a` par `b/(2*a)` :

#codly(offset:11)
```python
elif d==0 :
    print("Il y aune unique racine réelle : x =", -b/(2*a))
```

À noter que $(1,-2,1)$ donne la bonne réponse malgré un mauvais calcul ; il ne faut donc jamais se contenter d'un seul test.

=== 2.9.8

On obtient l'erreur *`ZeroDivisionError: float division by zero`* car on divise par 0 (`2*a`) dans le calcul des solutions. Il faut donc tester les valeurs des paramètres après leur saisie pour traiter le cas des équations _dégénérées_ :

#codly(offset:5)
```python
if a==0:
    if b==0:
        if c==0:
            print("S = R")
        else:
            print("Aucune solution")
    else:
        print("Une solution :", -c/b)
else:
    d = b*b - 4*a*c
    ...
```
=== Programme totalement corrigé

```python
from math import sqrt

# Ce programme calcule les solutions
#  d'une équation du second degré
a = int(input("Entrez a : "))
b = int(input("Entrez b : "))
c = int(input("Entrez c : "))

if a==0:
    # Equation dégénérée
    if b==0:
        if c==0:
            print("S = R")
        else:
            print("Aucune solution")
    else:
        print("Une solution :", -c/b)
else:
    # On a une équation du second degré
    d= b*b - 4*a*c
    print("La valeur de delta est", d)
    # Cas où il y a deux solutions réelles
    if d > 0:
        x1 = (-b + sqrt(d))/(2*a)
        x2 = (-b - sqrt(d))/(2*a)
        print("Il y a deux racines réelles : x1 =", x1, "et x2 =", x2)
    # Cas où il y a une seule solution réelle
    elif d==0 :
        print("Il y a une unique racine réelle : x =", -b/(2*a))
    # Cas où il n'y aucune solution réelle
    else:
        print("Il y a deux racines complexes distinctes, z1 =", -b/(2*a),"+ i x",sqrt(-d)/(2*a), "et z2 =", -b/(2*a),"- i x",sqrt(-d)/(2*a),"i")
```


== Exercice 2.10 - Puissance entière d'un réel positif

```python
# On considèrera que 0**0 = 1
x = -1.0
while x < 0:
    x = float(input("Entrez un nombre positif : "))
n = -1
while n < 0:
    n = int(input("Entrez un entier positif : "))

print(f"{x}^{n} = ", end = "")
r = 1.0
while n > 0:
    r = r * x
    n = n - 1

print(r)
```

== Exercice 2.11 - Somme des entiers impairs compris entre 0 et 100

On peut bien évidemment faire un calcul direct mais le but étant d'utiliser une boucle, on propose le code suivant :

```python
s = 0
n = 1
while n <= 100:
    s = s + n
    n = n + 2
print(s)
```

== Exercice 2.12 - Somme des diviseurs stricts

L'algorithme le plus évident mais peu efficace est :

```python
s = 0
d = 1
while d < n:
    if n % d == 0:
        s += d
    d += 1
return s
```

On peut optimiser l'algorithme précédent en évitant de parcourir tous les entiers de 1 à $n-1$ :
- on se limite dans un premier temps aux diviseurs $d$ strictement supérieurs à 1 et strictement inférieurs à $sqrt(n)$ et en ajoutant également $n/d$ (pour ne pas risquer d'ajouter deux fois l'éventuelle racine carrée si elle est entière) ;
- on vérifie ensuite si l'entier suivant est la racine carrée qu'on ajoute une fois.

```python
from math import sqrt

n = int(input("Entrez un entier n : "))
s = 0
# 1 n'a pas de diviseur strict
if n>1:
    # On ajoute 1 et on commence à 2 pour ne pas ajouter n
    s = 1
    d = 2
    e = sqrt(n)
    while d < e:
        if n % d == 0:
            s += d
            s += n // d
        d += 1
    # Gestion de la racine carrée
    if n%d == 0  and d == n//d :
        s += d

print("Somme des diviseurs stricts", s)
if s == 1:
    print(n, "est un nombre premier")
```

== Exercice 2.13 - Entier parfait

On créé une fonction à partir du code précédent.

```python
def sum_of_strict_factors(n: int) -> int:
    s = 0
    if n>1:
        s = 1
        d = 2
        e = sqrt(n)
        while d < e:
            if n % d == 0:
                s += d
                s += n // d
            d += 1
        # Gestion de la racine carrée
        if n%d == 0 and d == n//d :
            s += d
    return s

def is_perfect(n: int) -> bool:
    # 0 n'est pas un nombre parfait
    return 0 < n == sum_of_strict_factors(n)

l = int(input("Entrez un entier : "))
k = 2
print(f"Nombre(s) parfait(s) entre 1 et {l} :")
while k ≤ l:
    if is_perfect(k):
        print(k)
    k += 1
```

Les entiers parfaits inférieurs à 1000000 sont 6, 28, 496 et 8128.

== Exercice 2.14 - Calcul du PPCM

=== 2.14.1
On initialise $m_a$ et $m_b$ avec le plus petit multiple (non nul) donc $a$ et $b$.

=== 2.14.2

Le PPCM est trouvé lorsque $m_a = m_b$

=== 2.14.3

$m_a$ et $m_b$ sont incrémentés respectivement de $a$ et $b$.

=== 2.14.4

```python
a = int(input("a : "))
b = int(input("b : "))
ma = a
mb = b
while ma != mb:
    if ma > mb:
        mb += b
    else:
        ma += a
print(f"Le PPCM de {a} et {b} est {ma}")
```

== Exercice 2.15

```python
deposit = 6_000.0
rate = 0.015
target = 7_000.0

total = deposit
year = 0
while total < target:
    total += total * rate
    year += 1

print("Nombre d'années nécessaires :", year)
```

Le résultat est 11.

== Exercice 2.16

```python
i = 1
while i <= 4:
    j = 1
    n = 1
    while j <= 5:
        print(n, end = "   ")
        n += i
        j += 1
    print()
    i +=1
```

== Exercice 2.17

```python
from math import inf

n = -1
while n < 0:
    n = int(input("Nombre d'entiers : "))

previous = -inf
sorted = True
while n > 0:
    i = int(input("Entrez un entier : "))
    if i < previous:
        sorted = False
    previous = i
    n -= 1

if sorted:
    print("Les entiers sont triés de façon croissante")
else :
    print("Les entiers ne sont pas triés de façon croissante")
```

On pourrait arrêter la boucle dès la saisie d'un nombre inférieur au précédent :

#codly(offset: 8)
```python
while n > 0 and sorted:
    ...
```
== Exercice 2.18

```python
n = -1
while n < 0:
    n = int(input("Nombre d'entiers : "))

sum_odd = 0
sum_even = 0

while n > 0:
    i = -1
    while i < 0:
        i = int(input("Entrez un entier positif : "))
    if i % 2 == 0:
        sum_even += i
    else:
        sum_odd += i
    n -= 1

if sum_odd == sum_even:
    print("La somme des nombres pairs est égale à la somme des nombres impairs")
else:
    print("La somme des nombres pairs n'est pas égale à la somme des nombres impairs")
```

On pourrait modifier le code pour afficher un message d'erreur lorsque le nombre saisi est inférieur à zéro.

```python
def get_positive_integer(prompt: str) -> int:
    p = prompt
    n = -1
    while n < 0:
        n = int(input(p))
        p = "  [Erreur] Saisissez un entier positif : "
    return n

n = get_positive_integer("Nombre d'entiers : ")
sum_odd = 0
sum_even = 0

m = 1
while  m <= n:
    i = get_positive_integer("Entier " + str(m) + "/" + str(n) +" positif : ")
    if i % 2 == 0:
        sum_even += i
    else:
        sum_odd += i
    m += 1

if sum_odd == sum_even:
    print("La somme des nombres pairs est égale à la somme des nombres impairs")
else:
    print("La somme des nombres pairs n'est pas égale à la somme des nombres impairs")
```

== Exercice 2.19 - Combinaisons de 3 dés
 
Soient 3 dés :
- un dé rouge à 6 faces (1 à 6)
- un dé vert à 8 faces (1à 8)
- un dé bleu à 10 faces (1 à 10)

Écrire un programme qui à l'aide de boucles imbriquées calcule le nombre de tirages
dont la somme correspond à un entier donné.

=== Méthode 1

La méthode la plus simple (mais pas la plus efficace) est de parcourir l'ensemble
des combinaisons. On interrompra néanmoins la dernière boucle après la première
solution trouvée car il y a au plus une solution pour deux valeurs de dés données.

```python
def s1(n: int) -> int:
    s = 0
    red = 1
    while red <=6:
        green = 1
        while green <=8:
            blue = 1
            while blue <=10:
                if red + green + blue == n:
                    s += 1
                    break
                blue += 1
            green +=1
        red += 1
    return s

t = int(input("Total : "))
print(f"Le nombre de combinaisons de somme {t} est :", s1(t))
```

=== Méthode 2

Les valeurs de `red` et `green` étant connues, il y a au plus une solution pour `blue` dans la fonction 
précédente : `(n - red - green)` dont il suffit donc de vérifier qu'elle est comprise entre 1 et 10 pour 
conclure si c'est une solution ou pas. On aboutit donc à la fonction suivante qui ne contient plus que 2 boucles imbriquées :

```python
def s2(n: int) -> int:
    s = 0
    red = 1
    while red <=6:
        green = 1
        while green <= 8:
            if(0 < n - red - green < 11):
                s +=1
            green +=1
        red += 1
    return s

t = int(input("Total : "))
print(f"Le nombre de combinaisons de somme {t} est :", s2(t))
```

=== Méthode 3

Quelque soit la valeur cible, la fonction précédente parcourt l'ensemble  des combinaisons de `red` et `green` ; il est cependant possible d'optimiser largement le nombre de combinaisons explorées en ajustant les intervalles possibles pour chaque dé.

Par exemple : la valeur du dé rouge peut se voir ajouter un entier entre 2 et 18, il en résulte que
pour une valeur cible de 23, le dé rouge ne peut prendre que les valeurs 5 et 6 car on peut lui ajouter
18 au maximum. De même pour une cible de 4, il ne pourra prendre que les valeurs 1 et 2 car on doit
lui ajouter au moins 2.

Si $t$ est la valeur cible, la valeur minimale du dé rouge est $m_r = max(1, t - 18)$ et sa valeur
maximale est $M_r = min(6, t-2)$. Des combinaisons sont possibles si et seulement si $m_r ≤ M_r$.

En utilisant cette propriété pour `red` et `green`, on arrive à la procédure suivante :

```python
def s3(n: int) -> int:
    s = 0
    red = max(1, n-18)
    while red <= min(6, n-2) :
        green = max(1, n-red-10)
        while green <= min(8, n-red-1) :
            s += 1
            green += 1
        red += 1
    return s

t = int(input("Total : "))
print(f"Le nombre de combinaisons de somme {t} est :", s3(t))
```

=== Méthode 4

Connaissant les bornes des valeurs possibles pour `green`, il est inutile d'itérer sur l'intervalle ; on peut simplement ajouter le nombre de valeurs (mais on n'a plus qu'une seule boucle et non des boucles imbriquées) :

```python
def s4(n: int) -> int:
    s = 0
    red = max(1, n-18)
    while red <= min(6, n-2) :
        min_green = max(1, n-red-10)
        max_green = min(8, n-red-1)
        s += max(0, max_green - min_green + 1)
        red += 1
    return s

t = int(input("Total : "))
print(f"Le nombre de combinaisons de somme {t} est :", s4(t))
```

=== Résultat

Il est évident qu'il n'y a pas de combinaisons possibles pour les valeurs strictements inférieures à 3 ou strictement supérieures à 24 ; entre 3 et 24 le résultat est :
#table(
  columns: 2,
  [*Somme*], [*C*],
  [0], [0],
  [1], [0],
  [2], [0],
  [3], [1],
  [4], [3],
  [5], [6],
  [6], [10],
  [7], [15],
  [8], [21],
  [9], [27],
  [10], [33],
  [11], [38],
  [12], [42],
  [13], [44],
  [14], [44],
  [15], [42],
  [16], [38],
  [17], [33],
  [18], [27],
  [19], [21],
  [20], [15],
  [21], [10],
  [22], [6],
  [23], [3],
  [24], [1],
  [25], [0],
  [26], [0],
  [27], [0]
)

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  cetz.draw.set-style(barchart: (
    bar-width: 0.9
  ))
  //set-transform(((0,-1,0,0),(-1,0,0,0),(0,0,1,0),(0,0,0,1)))
  cetz-plot.chart.barchart(
    (
        ( 1, 0),( 2, 0),( 3, 1),( 4, 3),( 5, 6),( 6,10),( 7,15),( 8,21),( 9,27),(10,33),(11,38),(12,42),(13,44),
        (14,44),(15,42),(16,38),(17,33),(18,27),(19,21),(20,15),(21,10),(22, 6),(23, 3),(24, 1),(25, 0),(26, 0)
    ),
    label-key: 0,
    value-key: 1,
    mode: "basic",
    size: (14,8),
    x-min: 0, x-max: 45, x-tick-step: 5,
    x-label: "Nombre de combinaisons",
    y-label: "Somme des 3 dés",
    bar-style: (fill: blue, stroke: 0.25pt + black)
  )

})

=== Interprétation

On observe une symétrie dans les résultats, car à chaque combinaison $(r,g,b)$ correspond l'unique combinaison opposée $(7-r, 9-g, 11-b)$ (relation bijective qui est sa propre réciproque) de somme $27-(r+g+b)$. On a donc :

$ forall n in NN, C(n) = C(27-n) $
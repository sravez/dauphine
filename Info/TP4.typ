#import "@preview/algo:0.3.6": algo, i, d, comment, code

#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(
    languages: codly-languages,
    header-cell-args: (align:center)
)


= Informatique - TP4

== Exercice 4.6

=== Code originel

#codly(header: [*Code originel bogué*])
```python
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
```

=== 4.6.1 Correction des erreurs de syntaxe

- Arguments des fonctions : `'a;b'` $=>$ `'a,b'`
- Tests d'égalité : `'='` $=>$ `'=='`
- `':'` après déclaration de fonction
- `'continue'` pas supporté

Erreurs d'exécution :
- `ZeroDivisionError` ligne 6 => `i=1` ligne 4
- `UnboundLocalError` variable `pgcd` pas initialisée $=>$ `pgcd = 1` en ligne 5

=== 4.6.2

Le mot `None` s'affiche car les fonctions ne renvoie aucune valeur. Il faut remplacer `print(x)` dans les
fonctions par `return x`

=== 4.6.3

La bonne réponse est 3.

=== 4.6.3.a PGCD par diviseurs

Le code excluait la possibilité que $b$ soit le pgcd, il fallait donc mettre `'i<=b'` dans la condition de la boucle `while`.

L'algorithme proposé parcourt l'ensemble des entiers de 1 à $b$. Il est plus efficace de commencer à $b$, le premier diviseur rencontré étant alors le pgcd.

On gère également le cas $a<b$.

Le code corrigé est :

```python
def pgcd_par_diviseurs(a: int,b: int)-> int:
    a = abs(a)
    b = abs(b)
    i = min(a,b)
    while i>1:
        if a%i == 0 and b%i == 0:
            break
        i -= 1
    return i
```

=== 4.6.3.a PGCD par différences

L'algorithme proposé ne fait que soustraire $b$ successivement à $a$ sans changer sa valeur.

Le code corrigé est :

#codly(header: [*Calcul du PGCD par la méthode des différences*])
```python
def pgcd_par_differences(a: int,b: int)-> int:
    a = abs(a)
    b = abs(b)
    diff = abs(a - b)
    while diff > 0:
        b = min(a,b)
        a = diff
        diff = abs(a - b)
    return a
```

=== 4.6.3.a PGCD par Euclide

Les erreurs :
- on assigne le quotient à $r$ et non le reste.
- usage impropre de `if` et `continue`

*Rq :* Si l'ordre des paramètres est inversé, il est correct après la première itération.

Le code corrigé est :

```python
def pgcd_par_euclide(a,b):
    a = abs(a)
    b = abs(b)
    r = a % b
    while r != 0:
        a = b
        b = r
        r = a % b
    return b
```

=== 4.6.5

La valeur nulle perturbe les méthodes par diviseurs et Euclide car dans un cas, elle accepte tous les diviseurs
et provoque des erreurs `DivisonByZero` dans l'autre.

$op("pgcd")(0,0)$ est indéfini quand $op("pgcd")(0,n)$ est égal à $n$ si $n>0$.

On modifie les fonctions en traitant d'abord le cas des valeurs nulles.

La fonction renvoie la valeur nulle s'il n'y a pas de PGCD (qui n'est jamais nul).

#codly(header: [*Calcul du PGCD par la méthode des diviseurs*])
```python
def pgcd_par_diviseurs(a: int,b: int)-> int:
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
```

#codly(header: [*Calcul du PGCD par la méthode d'Euclide*])
```python
def pgcd_par_euclide(a,b):
    a = abs(a)
    b = abs(b)
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
```

== Exercice 4.7

=== 4.7.1

On peut importer tout le module `math` ou seulement les éléments dont on a besoin :


```python
import math
print(math.cos(math.pi/2))
```
ou
```python
from math import cos, pi
print(cos(pi/4))
```

=== 4.7.2

On n'induit pas de délai pour la dernière itération afin que le programme rende la 
main le plus vite possible.

```python
import random, time

n = 10
vmin = 10
vmax = 50
interval = 1

while n > 0:
    print(random.uniform(vmin, vmax))
    n -=1
    if n > 0:
        time.sleep(interval)
```

== Exercice 4.8

Le programme ci-dessous inverse si besoin les bornes.

On initialise les valeurs minimale et maximale aux bornes respectivement maximale
et minimale afin qu'elles prennent la valeur du premier entier aléatoire.

```python
from random import randint

nb = 10

def tirage(vmin=0, vmax=20):
    i = 0
    inf = max(vmin,vmax)
    sup = min(vmin,vmax)
    sum = 0
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
```

== Exercice 4.9

=== 4.9.1

```python
from random import random
from math import floor

def tirage()-> int:
    return floor(2 * random())

def AleatoireAvecRepetitions(n: int):
    if n > 0:
        nb = 0
        while n > 0:
            nb += 1
            if tirage() == 1:
                n -= 1
        return { "last": tirage(), "nb" : nb}
    else:
        print("Mauvais paramètre")
        return None
```

=== 4.9.2

```python
n = 0
while n <= 0:
    n = int(input("Nombre de 1 requis par tirage (>0) : "))

iterations = 1000

total_last = 0
total_nb = 0
for i in range(0, iterations):
    t = AleatoireAvecRepetitions(n)
    total_last += t["last"]
    total_nb += t["nb"]

print("Nombre de 1 :",total_last)
print("Nombre moyen de tirages :", total_nb / iterations)
```

=== 4.9.3

Un résultat (qui change à chaque fois) :

#table(
    columns:3,
    [*n*], [*Nombre de 1*], [*Nombre moyen de tirages*],
    [1]  , [499]           , [1,978],
    [2]  , [479]           , [4,032],
    [3]  , [469]           , [6,072],
    [4]  , [522]           , [7,924],
    [5]  , [492]           , [9,772],
    [6]  , [504]           , [12,003],
    [7]  , [501]           , [14,06],
)

On constate que :
- le nombre de 1 est aux alentours de 500 ;
- le nombre moyen de tirages est aux alentours de $2 n$.

Cela s'explique par le fait que, 0 et 1 étant équiprobables, on a :
- un nombre sensiblement égal de 0 et 1 pour le dernier tirage, donc : 1000 / 2 = 500 ;
- un nombre de tirages nécessaires sensiblement égal à $2 n$ pour obtenir $n$ fois 1.

== Ecercice 4.10 - Évaluation de $pi$ par la méthode de Monte-Carlo

```python
from random import uniform

def monte_carlo(n: int)-> float:
    nb = 0
    i = n
    while i > 0:
        i -= 1
        if uniform(-1,1)**2 + uniform(-1,1)**2 <1 :
            nb += 1
    return 4*nb/n
```
 On peut noter qu'il est possible de se restreindre au premier quadrant du cercle :

```python
from random import random

def monte_carlo(n: int)-> float:
    nb = 0
    i = n
    while i > 0:
        i -= 1
        if random()**2 + random()**2 < 1:
            nb += 1
    return 4*nb/n
```

Un résultat est :

#table(
    columns:2,
    [*n*]   , [*Monte-Carlo*],
    [50]    , [3.04]         , 
    [500]   , [3.2]          , 
    [5000]  , [3.44]         ,
    [50000] , [3.28]          
)

== Exercice 4.11

=== 4.11.1 Pseudo-code

#algo(
    title: "Roulette",
      comment-prefix: [#sym.triangle.stroked.r ],
      block-align: left,
      line-numbers: false
)[
    #comment(inline: true)[Renvoie le gain net (éventuellement négatif) d'un lancer]\
    $m <--$ *get*(Mise) \
    $n <--$ *get*(Numéro) \
    $r <--$ randint(0, 49) #comment[Résultat du lancer] \
    if $r=n$ :#i#comment[Bon numéro]\
        return $2 times m$ #d#comment[*Gain net* = 2 fois la mise]\
    else if $r mod 2 = n mod 2$ :#i#comment[Bonne couleur]\
        return $0.5 times m$ #d#comment[*Gain net* = la moitié de la mise]\
    else : #i#comment[Perdu]\
        return $-m$ #d#comment[*Perte de la mise*]
]

=== 4.11.2 Implémentation

==== Fonction de saisie de données utilisateur

On crée une fonction demandant à l'utilisateur de saisir un entier dans un intervalle
(éventuellement infini si on spécifie une borne haute négative) avec une invite variable permettant
de l'utiliser aux différents endroits du programme.

```python
def get_int(prompt: str, vmin: int, vmax: int)-> int:
    error_str = ""
    interval = f"({vmin}-{vmax})"
    if vmax < 0:
        interval = f"(≥ {vmin})"
    i = -1
    while i < vmin or (i > vmax and vmax >= 0):
        i = int(input(f"{error_str}{prompt} {interval} : "))
        error_str = "ERREUR DE SAISIE\n"
```        
==== Fonction de simulation d'un lancer

La fonction demande à l'utilisateur combien il veut miser (dans la limite de son budget) et sur quel
numéro, simule le lancer de boule et renvoie le gain net (éventuellement négatif).

```python
from random import randint
from math import ceil

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
```

==== Gestion de la partie

```python
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
```

== Exercice 4.12

=== 4.12.1

```python
def get_horse_count(vmin, vmax) ->int:
    n = -1
    error_str = ""
    while n < vmin or n > vmax:
        n = int(input(f"{error_str}Nombre de cheveaux (entre {vmin} et {vmax}) : "))
        error_str = "ERREUR - "
    return n
```

=== 4.12.2

```python
def print_odds(c: int):
    print(f"Vous avez 1 chance sur {c} de trouver le cheval gagnant.")
    p = 3
    if c < 8:
        p = 2
    print(f"Vous avez {p} chances sur {c} de trouver le cheval placé.")
    print(f"Vous avez 1 chance sur {c * (c-1) * (c-2)} de trouver le tiercé dans l'ordre.")
    print(f"Vous avez 1 chance sur {int(c * (c-1) * (c-2)/6)} de trouver le tiercé dans le désordre.")

print_odds(get_horse_count(4,20))
```

=== 4.12.3 Génération du tiercé

On tire un numéro au hasard et on l'ajoute à la liste s'il n'y figure pas déjà sinon on retire un cheval ; et ce, jusqu'à ce que la liste comporte 3 éléments.

On se donne la possibilité de tirer un nombre différent de chevaux en passant ce nombre en argument avec 3 comme valeur par défaut.

On stipule $min(k,n)$ comme borne d'arrêt car on pourrait avoir une boucle infinie si $k>n$ (ce qui n'est pas supposé arriver dans le cas présent).

```python
def get_three_horses(n: int, k: int = 3)-> list[int]:
    r = []
    while len(r) < min(k,n):
        h = random.randint(1,n)
        if(r.count(h)==0):
            r.append(h)
    return r
```

=== 4.12.4

==== 4.12.4.a Fonctions de saisie

On définit les fonctions de saisie de paramètres suivantes :

```python
def get_bet_count()->int:
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
```

==== 4.12.4.b Analyse du résultat

```python
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
```

==== 4.12.4.c Simulation de pari

```python
def bet_simulation():
    n = get_horse_count(4, 20)
    print_odds(n)
    
    p = get_bet_count()
    b = get_bet(n, p)
    
    r = get_three_horses(n)
    print(f"\nLe tiercé gagnant est : {r[0]} - {r[1]} - {r[2]}\n")

    print_result(n, r, b)

bet_simulation()
```


== Exercice 4.13 - Approximation de la valeur de $pi$

=== 4.13.1 Différentes suites convergeant vers $pi$

==== 4.13.1.a Suite de Leibniz

$ u_n = 4 times sum_(k=0)^(n) (-1)^k / (2k+1) $
Voici une fonction permettant de calculer un terme de la suite de Leibniz :

```python
def leibniz(n: int) -> float:
    i = 0
    u = 4
    while i < n:
        i += 1
        u += 4 * (-1)**i / (2*i+1)
    return u
```

Il serait _anti-économique_ d'utiliser la fonction précédente dans la recherche de notre approximation de $pi$ car chaque terme peut se déduire du précédent par une addition dépendant uniquement de l'indice. On procèdera donc ainsi :

```python
def leibniz_estimate(precision: float):
    i = 0
    u = 4
    while abs(u - math.pi)> precision:
        i += 1
        u += 4 * (-1)**i / (2*i+1)
    return { "n":i, "pi": u}
```

Pour une précision de $10^(-6)$, on obtient :
- $n = 1" "000" "000$
- $u_n = 3.1415936535887745$

==== 4.13.1.b Suite d'Euler

$ v_n = sqrt(6 times sum_(k=1)^n 1/k^2) $

Le raisonnement est le même que pour la suite de Leibniz

Calcul d'un membre de la suite :

#codly(header: [*Suite de Euler*])
```python
def euler(n: int):
    i = 0
    s = 0
    while i < n:
        i += 1
        s += 6 / i**2
    return math.sqrt(s)
```

Recherche d'une approximation de $pi$ :

#codly( header: [*Estimation par la suite de Euler*])
```python
def euler_estimate(precision: float):
    i = 0
    s = 0
    v = 0
    while abs(v - math.pi)> precision:
        i += 1
        s += 6 / i**2
        v = math.sqrt(s)
    return { "n":i, "pi": v}
```

Pour une précision de $10^(-6)$, on obtient :
- $n = 954" "930$
- $v_n = 3.141591653590463$

==== 4.13.1.c Suite de Woon

$a_0 = 1$, $a_n = sqrt(1 + (sum_(k=0)^(n-1) a_k)^2 )$ et $w_n = 2^(n+1) / a_n$

#codly( header: [*Suite de Woon*])
```python
def woon(n: int):
    i = 0
    s = 1
    while i < n:
        i += 1
        a = math.sqrt(1 + s**2)
        s += a
    return 2**(n+1) / a
```

Fonction d'estimation :

#codly( header: [*Estimation par la suite de Woon*])
```python
def woon_estimate(precision: float):
    i = 0
    p = 2
    s = 1
    w = 2
    while abs(w - math.pi)> precision:
        i += 1
        a = math.sqrt(1 + s**2)
        s += a
        p *= 2
        w = p/a
    return { "n":i, "pi": w}
```

Pour une précision de $10^(-6)$, on obtient :
- $n = 11$
- $w_n = 3.1415923455701176$


==== 4.13.1.d Fractions continues

On calcule la valeur d'une fraction $f_n$ en calculant le dénominateur de la fraction en remontant de « $1/n + 1$ » à « $1 + ...$ ».

Si $d_0 = 1/n + 1$ et $d_k = 1/(n-k) + 1/(1/(n-k+1) +...)$, on a :

$d_(k+1) = 1/(n-k-1) + 1/d_k$ et $f_n = 2 + 2/d_(n-1)$

#codly( header: [*Fractions continues*])
```python
def fraction_continue(n):
    d = 1
    while n >= 1:
        d = 1/n + 1/d
        n -= 1
    return 2 + 2/d
```

Il n' y pas de relation évidente entre deux fractions continues consécutives, la fonction d'estimation calculera donc tous les termes successivement :

#codly( header: [*Estimation par la méthode des fractions continues*])
```python
def fractions_continues_estimate(precision: float):
    i = 1
    f = 3
    while abs(f - math.pi)> precision:
        i += 1
        f = fraction_continue(i)
    return { "n":i, "pi": f}
```

Pour une précision de $10^(-6)$, on obtient :
- $n = 627$
- $f_n = 3.141591656276364$

=== 4.13.2 Monte-Carlo

Remarque : la proportion étant la même on peut se contenter d'effectuer des tirages aléatoires dans le quadrant $[0;1[ times [0 ; 1[$

#codly( header: [*Méthode de Monte-Carlo*])
```python
from random import random

def monte_carlo(N: int)-> float:
    nb = 0
    i = N
    while i > 0:
        i -= 1
        if(random()**2 + random()**2 < 1):
            nb += 1
    return 4*nb/N
```

On effectue les simulations demandées grâce à la fonction suivante :

```python
def monte_carlo_simulations():
    print("\nMonte-Carlo :")
    t = 10
    N = 100
    for i in range(0,3):
        s = 0
        for k in range(0,t):
            s += monte_carlo(N)
        print(f"- La valeur approximative de pi avec {N:>5} points est {round(s/t, 7):.7f}")
        N *=10
```

Le résultat n'est bien sûr par le même à chaque simulation mais voici un résultat :

#codly(enabled: false)
```
Monte-Carlo :
- La valeur approximative de pi avec   100 points est 3.1080000
- La valeur approximative de pi avec  1000 points est 3.1492000
- La valeur approximative de pi avec 10000 points est 3.1368000
```

=== 4.13.3 Affichage

On chronomètre via la fonction `monotonic()` du module `time` en capturant la valeur de l'horloge
en début et en fin d'exécution et en affichant la différence.

Afin de simplifier la maintenance du code en évitant les répétitions, on crée des fonctions internes
(dont une prend une fonction comme paramètre).

#codly(enabled: true)
```python
def run_estimations(precision: float):
    '''Approximations chronométrées de pi'''

    print("Approximation de pi :\n")
    # Largeurs des colonnes
    w0 = 19 ; w1 = 7 ; w2 = 13 ; w3 = 15
    print(f"{'Suite': <{w0}}  {'Rang': <{w1}}  {'Approximation': <{w2}}  {'Temps de calcul': <{w3}}")
    print(f"{''     :-<{w0}}  {''    :-<{w1}}  {''             :-<{w2}}  {''               :-<{w3}}")
    

    def display_line(suite, rank, estimate, duration):
        '''Fonction imprimant une ligne de résultat'''
        print(f"{suite: <{w0}}  {rank: >{w1}}  {round(estimate,7): <{w2}} {duration: .4f}")


    def run_estimation(name: str, fn):
        '''Exécution chronométrée d'une fonction d'approximation'''
        start = time.monotonic()
        r = fn(precision)
        end = time.monotonic()
        display_line(name, r["n"], r["pi"], end - start)

    run_estimation("Suite de Leibniz", leibniz_estimate)
    run_estimation("Suite de Euler", euler_estimate)
    run_estimation("Suite de Woon", woon_estimate)
    run_estimation("Fractions continues", fractions_continues_estimate)

run_estimations(1e-6)
monte_carlo_simulations()
```

Il en ressort l'affichage suivant :


#codly(enabled: false)
```
Approximation de pi :

Suite                Rang     Approximation  Temps de calcul
-------------------  -------  -------------  ---------------
Suite de Leibniz     1000000  3.1415937      0.3030
Suite de Euler        954930  3.1415917      0.1088
Suite de Woon             11  3.1415923      0.0000
Fractions continues      627  3.1415917      0.0121

Monte-Carlo :
- La valeur approximative de pi avec   100 points est 3.1440000
- La valeur approximative de pi avec  1000 points est 3.1220000
- La valeur approximative de pi avec 10000 points est 3.1402000
```

*On constate que la suite de Woon est de loin la méthode la plus efficace.*
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(languages: codly-languages)

= Informatique - TP4

== Exercice 4.6

=== Code originel

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

=== 4.6.3.a PGCD par differences

L'algorithme proposé ne fait que soustraire $b$ successivement à $a$ sans changer sa valeur.

Le code corrigé est :

```python
def pgcd_par_differences(a: int,b: int)-> int:
    a = abs(a)
    b = abs(b)
    diff = abs(a - b)
    while diff > 0:
        a = diff
        diff = abs(a - b)
        b = a
    return a
```

=== 4.6.3.a PGCD par Euclide

Si l'ordre est inversé, il est correct après la première itération.

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

=== 4.8.1



== Exercice 4.13

=== 4.13.1

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

On calcule la valeur d'une fraction continue de la façon suivante :

```python
def fraction_continue(n):
    d = 1
    while n >= 1:
        d = 1/n + 1/d
        n -= 1
    return 2 + 2/d
```

Il n' y pas de relation évidente entre deux fractions continues consécutives, la fonction d'estimation calculera donc tous les termes successivement :

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
    t = 10
    N = 100
    for i in range(0,3):
        s = 0
        for k in range(0,t):
            s += monte_carlo(N)
        print(f"La valeur approximative de pi avec {N} points est", round(s/t, 7))
        N *=10
```

Le résultat n'est bien sûr par le même à chaque simulation mais voici un résultat :
```
La valeur approximative de pi avec 100 points est 3.132
La valeur approximative de pi avec 1000 points est 3.1536
La valeur approximative de pi avec 10000 points est 3.14056
```

=== 4.13.3 Affichage

```python

def display_line(suite, rank, estimate, duration):
    print("{0: <20}  {1: >7}  {2: <14}  {3: <15}".format(suite, rank, round(estimate,7), round(duration*1e-9, 4)))

def run_simulations(precision: float):
    print("{0: <20}  {1: <7}  {2: <14}  {3: <15}".format("Suite", "Rang", "Approximation", "Temps de calcul"))

    start = time.monotonic_ns()
    r = leibniz_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Leibniz", r["n"], r["pi"], end - start)
    
    start = time.monotonic_ns()
    r = euler_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Euler", r["n"], r["pi"], end - start)

    start = time.monotonic_ns()
    r = woon_estimate(precision)
    end = time.monotonic_ns()
    display_line("Suite de Woon", r["n"], r["pi"], end - start)

    start = time.monotonic_ns()
    r = fractions_continues_estimate(precision)
    end = time.monotonic_ns()
    display_line("Fractions continues", r["n"], r["pi"], end - start)

    monte_carlo_simulations()

run_simulations(1e-6)
```
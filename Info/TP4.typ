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

La fonction `random()` génère des nombres pseudo-aléatoire dans l'intervalle $[0;1[$.
Pour que 50 soit une valeur possible, il faut multiplier par une valeur plus grande
que l'intervalle, mais pas trop pour que 50 n'est pas une probabilité anormalement
élevée. Il faut ensuite écrêter les valeurs supérieures à 50.

On n'induit pas de délai pour la dernière itération afin que le programme rende la 
main le plus vite possible.

```python
import random, time

n = 10
vmin = 10
vmax = 50
interval = 1

while n > 0:
    print(min(vmax,vmin + (vmax - vmin + 0.01) * random.random()))
    n -=1
    if n > 0:
        time.sleep(interval)
```

== Exercice 4.8

=== 4.8.1



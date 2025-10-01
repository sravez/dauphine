#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(languages: codly-languages)
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

= TD2

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
        min_green = max(1, n - red - 10)
        max_green = min(8, n - red - 1)
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
  [24], [1]
)

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  cetz.draw.set-style(barchart: (
    bar-width: 5,
    mode: "basic",
    data: (([0], 0), ([1], 0))
  ))  
})

=== Interprétation

On observe une symétrie dans les résultats, car à chaque combinaison $(r,g,b)$ correspond l'unique combinaison opposée $(7-r, 9-g, 11-b)$ (relation bijective qui est sa propre réciproque) de somme $27-(r+g+b)$. On a donc :

$ forall n in NN, C(n) = C(27-n) $
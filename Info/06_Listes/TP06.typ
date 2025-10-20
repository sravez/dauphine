#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(
    languages: codly-languages,
    header-cell-args: (align:center)
)


= Informatique - TP6 - Listes

== Exercice 6.1

```python
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
```

== Exercice 6.2

=== 6.2.1 Saisie des notes

Afin de gérer le cas où l'utilisateur saisirait une note non conforme (non convertible en _float_ ou non comprise dans l'intervalle $[0,20]$), on fait appelle au traitement des erreurs.

```python
def get_note(p: str)-> float:
    ok = False
    while not ok:
        s = str(input(p))
        try:
            f = float(s)
            if f < 0 or f > 20:
                raise ValueError("Note invalide.")
        except:
            print("Saisissez une note entre 0 et 20 !")
        else:
            ok = True
    return f

def get_notes(n: int)-> list[float]:
    pad = len(str(n))
    notes = []
    for i in range(1, n+1):
        notes.append(get_note(f"Note {i: >{pad}}/{n} : "))
    return notes
```

=== 6.2.2 Statistiques

Pour le calcul de la moyenne, on peut parcourir la liste pour sommer les notes mais on a pris ici le parti d'utiliser `reduce()`.

L'énoncé suggère l'unicité de la meilleure note (et donc l'usage de `notes.index(M)`) mais plusieurs élèves peuvent avoir la note maximale ; on est donc obliger de parcourir la liste pour les identifier et on utilisera une liste pour les stocker.

```python
def get_stats(notes: list[float])->dict:
    # Moyenne de la classe
    m = reduce(lambda x,y: x+y, notes) / len(notes)
    # Note maximale
    M = max(notes)
    # Nombre d'élèves au-dessus de la moyenne de la classe
    good = 0
    # Indices des élèves ayant la meilleure note
    best:list[int] = []
    
    # Détermination de `good` et `best``
    for i in range(0, len(notes)):
        if notes[i] >= m :
            good +=1
        if notes[i] == M:
            best.append(i)

    return {
        "mean" : m,
        "max"  : M,
        "good" : good,
        "best" : best
    }


def display_stats(stats: dict)->None:
    print("Moyenne       :", round(stats["mean"],1))
    print("≥ moyenne     :", stats["good"])
    print("Note maximale :", stats["max"])
    print("Meilleurs     :", ", ".join([str(s) for s in stats["best"]]))
```
*NB :* on utilise la compréhension de liste pour convertir les nombres en chaînes de caractères afin de pouvoir utiliser `join()`  et éviter une boucle.

=== 6.2.3 Programme

```python
n = int(input("Nombre de notes : "))
    notes = get_notes(n)
    stats = get_stats(notes)
    display_stats(stats)
```

== Exercice 6.3

Afficher n'est pas stocker !

```python
def get_u_list(n: int) -> list[int]:
    u = [1,2]
    for i in range(2, n+1):
        u.append(5*u[i-1] + 10*u[i-2])
    return u
```

== Exercice 6.4

2 stratégies possibles :
- On copie la plus longue liste et on ajoute aux premiers éléments la valeur de ceux de la plus courte.
- On crée une nouvelle liste après avoir identifier en ajoutant d'abord la somme des éléments de même rang puis les  éléments restants de la liste la plus longue.

*NB :* `short = l1` ne crée pas une copie de `l1` mais une référence (comme un alias) vers `l1`; toute modification de `short` est alors une modification de `l1`. Par contre `r = l1.copy()` effectue une copie mais une copie dite _shallow_ : cela signifie que les objets référencés dans `l1` (par exemple des listes) ne sont pas copiés et que leur modification est donc effectives dans `l1` et `r`.

```python
def LRES(l1: list[int], l2: list[int]) -> list[int]:
    # Résultat
    r: list[int]
    # Référence vers la liste la plus courte
    short: list[int]

    if len(l1) >= len(l2):
        r = l1.copy()
        short = l2
    else:
        r = l2.copy()
        short = l1

    for i in range(0, len(short)):
        r[i] += short[i]
    
    return r


def LRES_2(l1: list[int], l2: list[int]) -> list[int]:
    # Résultat
    r: list[int] = []
    # Référence vers la liste la plus longue
    long : list[int]
    # Référence vers la liste la plus courte
    short: list[int]

    if len(l1) >= len(l2):
        long = l1
        short = l2
    else:
        long = l2
        short = l1

    for i in range(0, len(short)):
        r.append(long[i]+short[i])
    
    r.extend(long[len(short):])
    return r
```

== Exercice 6.6

```python
def moyenne(resultats, eleve: str) -> float:
    s = 0
    n = 0

    for resultat in resultats:
        if resultat[0] == eleve :
            s += resultat[2]
            n += 1

    if n> 0 :
        return s / n
    else:
        return None


resultats = [
    ["Bob", "Python", 11],
    ["Zoe", "Python", 14],
    ["Bob", "algebre", 10.5]
]  

print(moyenne(resultats, "Bob")) # 10.75
print(moyenne(resultats, "Zoe")) # 14.0
print(moyenne(resultats, "Doe")) # None
```
On peut également utiliser une compréhension de liste et la réduction pour un code plus concis mais pas obligatoirement plus efficace :

```python
def moyenne(resultats, eleve: str) -> float:
    notes = [ r[2] for r in resultats if r[0] == eleve]
    if len(notes) > 0:
        return reduce(lambda x,y: x+y, notes) / len(notes)
    else:
        return None
```
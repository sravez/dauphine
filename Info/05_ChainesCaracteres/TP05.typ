#import "@preview/algo:0.3.6": algo, i, d, comment, code

#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(
    languages: codly-languages,
    header-cell-args: (align:center)
)


= Informatique - TP4

== Exercice 5.5

```python
def remove_spaces(s: str)-> str:
    r = ""
    for i in range(0, len(s)):
        if s[i] != " ":
            r += s[i]
    return r

s = str(input("Saisissez une chaîne : "))

print(f"Chaîne      : '{s}'")
print(f"Longueur    : {len(s)}")
print(f"Sans espace : '{remove_spaces(s)}'")
```

== Exercice 5.6

```python
def replace_at_position(s: str, pos: int, w:str ="?") -> str :
    if pos >= 0 and pos < len(s):
        return s[0:pos] + w + s[pos+1:]
    else:
        print("Mauvais indice")
        return s
        

s = str(input("Saisissez une chaîne : "))
print(f"Chaîne : '{s}'")

while True:
    i = int(input("Saisissez un indice (-1 pour arrêter) : "))
    if(i == -1):
        break
    s = replace_at_position(s, i)
    print(f"Chaîne : '{s}'")
```

== Exercice 5.7

```python
def remove_repetitions(s: str) -> str:
    r = ""
    last = ""
    for i in range(0, len(s)):
        if s[i] != last:
            r += (last := s[i])
    return r

s = str(input("Saisissez une chaîne : "))
print(f"Chaîne sans répétition : '{remove_repetitions(s)}'")
```

*NB :* On utilise l'opérateur _Walrus_ (`:=`) en ligne 6 au lieu d'écrire deux lignes. Cet opérateur renvoie la valeur assignée à `last` qui est ensuite ajoutée à `r`.

== Exercice 5.8

Il n'est pas précisé dans l'énoncé que le nombre d'occurences doit être exactement `n` qui est donc interprété comme le nombre minimal d'occurences.

```python
def get_str_wo_space(p: str) -> str:
    r = " "
    e = ""
    while r.count(" ") > 0:
        r = str(input(e+p))
        e = "!! Pas d'espace - "
    return r

def has_multiple_letter_occurences(s: str) -> bool:
    used = ""
    for i in range(0, len(s)):
        if used.find(s[i]) >= 0:
            return True
        used += s[i]
    return False

def test(n: int, s1: str, s2: str) -> bool:
    if has_multiple_letter_occurences(s2):
        return False
    else:
        return s1.count(s2) >= n

n  = int(input("Nombre d'occurences : "))
s1 = get_str_wo_space("Chaîne contenante   : ")
s2 = get_str_wo_space("Motif à rechercher  : ")

if test(n,s1,s2):
    print("oui")
else:
    print("non")
```

== Exercice 5.9

```python
def test2(s1:str, s2: str) -> int:
    n = len(s1) // len(s2)
    if s1 == n * s2:
        return n
    else:
        return 0

s1 = str(input("Chaîne 1 : "))
s2 = str(input("Chaîne 2 : "))

if (n := test2(s1, s2)) > 0:
    print(n)
else:
    print("non")
```

On peut aussi parcourir la chaîne `s1` et vérifier la présence successive du motif :

```python
def test2_2(s1: str, s2: str) -> int:
    start = 0
    n = 0
    while start < len(s1):
        if s1[start:start + len(s2)] == s2 :
            start += len(s2)
            n += 1
        else:
            n = 0
            break
    return n

```

Remarquer l'opérateur _Walrus_.

Si la longueur de `s1` n'est pas un multiple de celle `s2`, le résultat sera `non` on peut donc vérifier cela et éviter de parcourir toute la chaîne. Cela présente un gain pour les longues chaînes.

```python
def test2_3(s1: str, s2: str) -> int:
    n = 0
    if len(s1) % len(s2) == 0:
        n = len(s1) // len(s2)
        for i in range(0,n):
            start = i * len(s2)
            if s1[start:start + len(s2)] != s2 :
                n = 0
                break
    return n
```

== Exercice 10

```python
def display_x(s:str)-> None:
    l = len(s)
    for i in range(0, l):
        j = min(i,l-i-1)
        c1 = s[j]
        if j == l - j -1:
            c2 = ""
        else:
            c2 = s[l-j-1]
        print(f"{j*" "}{c1}{(l-2*j-2)*" "}{c2}")

display_x("MAGIQUE")
display_x("PYTHON")
display_x("MAGIQUEPYTHON")
```
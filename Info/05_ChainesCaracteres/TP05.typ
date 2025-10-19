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


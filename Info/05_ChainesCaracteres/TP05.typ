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

== Exercice 5.10

- `l` : numéro de ligne
- `c` : indice du premier caractère affiché qui est égal au nombre d'espaces avant le premier caractère
- `c1` : premier caractère affiché
- `c2` : deuxième caractère affiché qui est le symétrique de `c1` si ce n'est pas le caractère médian ( quand `c = m-1-c`)


```python
def display_x(s:str)-> None:
    m = len(s)
    for l in range(0, m):
        c = min(l, m-1-l)
        c1 = s[c]
        if c == m - 1 - c:
            c2 = ""
        else:
            c2 = s[m-c-1]
        print(f"{c*" "}{c1}{(m - 2*c -2)*" "}{c2}")

display_x("MAGIQUE")
display_x("PYTHON")
display_x("MAGIQUEPYTHON")
```

== Exercice 5.11

```python
def hidden_in(needle: str, haystack: str) -> bool:
    n = 0
    h = 0
    f = -1
    while n < len(needle) and h < len(haystack):
        while h < len(haystack):
            h += 1
            if needle[n] == haystack[h-1]:
                f = n
                break
        n +=1
    
    return f == len(needle) - 1
```

== Exercice 5.12

```python
from random import randint
    
def permuteMot(s: str) -> str :
    r = s[0]
    chars = s[1:len(s)-1]
    while len(chars) > 0 :
        i = randint(0,len(chars) -1)
        r += chars[i]
        chars = chars[0:i] + chars[i+1:]
    r += s[len(s)-1]    
    return r
```

== Exercice 5.13

```python
def add_to_words(words: dict[list[int]], word:str, ind: int):
    if word in words:
        words[word].append(ind)
    else:
        words[word] = [ind]

def find_next_word(phrase: str, pos: int=0):
    r = { "word": "" }
    # On passe les éventuelles espaces
    while pos < len(phrase) and phrase[pos] == " ":
        pos +=1
    # On stocke la position de l'éventuel mot (on peut être à la fin de la chaîne)
    r["pos"] = pos
    # On lit les lettres
    # NB : on teste d'abord la position pour éviter l'IndexError en fin de chaîne
    while pos < len(phrase) and phrase[pos] != " ":
        r["word"] += phrase[pos]
        pos +=1
    return r

def get_words(phrase: str):
    r: dict[list[int]] = {}

    pos = 0
    while (w := find_next_word(phrase, pos))["word"] != "":
        add_to_words(r, w["word"], w["pos"])
        pos = w["pos"] + len(w["word"])
    return r

print(get_words(" ab cda fg ab   fg cda h cda    "))
```
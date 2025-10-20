#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1" : *
#show: codly-init.with()
#codly(
    languages: codly-languages,
    header-cell-args: (align:center)
)


= Informatique - TP5 - Chaînes de caractères

== Exercice 5.2

Il faut tester que le 1#super("er") caractère est le même que le dernier, que le second... et ce jusqu'au caractère correspondant à la partie entière de la moitié de la longueur car en cas de nombre impair de caractères, celui du milieu n'influe pas sur le résultat.

```python
from math import floor

def palindrome(s: str)->bool:
    r = True
    for i in range(0, floor(len(s)/2)):
        r = r and s[i]==s[len(s)-1-i]
    return r
```

== Exercice 5.3
```python
def remove_short_words(s:str, l:int)->str:
    r = ""
    w = ""
    sp = ""
    for i in range(0, len(s)):
        if s[i] != " ":
            w += s[i]
        if s[i] == " " or i == len(s)-1 :
            if len(w)>l:
                r += sp+w
                sp = " "
            w = ""
    return r

print(remove_short_words("bonjour les amies !", 3))    
```

== Exercice 5.4

```python
def display_n(s:str)->None:
    l = len(s)
    for i in range(0, l):
        line = s[i]
        sp1 = (l-2+i) % (l-1)
        line += (sp1 * " ") + s[i]
        if sp1 != l-2:
            line += (l-3-sp1)*" " + s[i]
        print(line)
```

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

Remarquer l'opérateur _walrus_.

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
- `c2` : deuxième caractère affiché qui est le symétrique de `c1` si ce n'est pas le caractère médian (quand `c = m-1-c`)


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

On recherche l'aiguille dans la botte de foin en commençant par chercher le premier caractère de `needle` puis le second à partir de la position suivante, puis...

On anticipe l'incrémentation de `h` afin de ne la coder qu'une fois (car il faut incrémenter que l'on trouve ou pas) et on vérifie donc l'égalité sur le caractère précédent.


```python
def hidden_in(needle: str, haystack: str) -> bool:
    # indice dans needle du caractère recherché
    n = 0
    # position de recherche dans haystack
    h = 0
    # indice dans needle du dernier caractère trouvé
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

=== 5.12.1 `permuteMot()`

On peut adopter deux stratégies pour stocker les lettres restant à insérer :
- dans une liste
- dans une chaîne de caractères

Le test sur la longueur de chaîne permet d'économiser des traitements sur les chaînes courtes et de gérer les cas limites des chaînes de vides ou à un caractère.


```python
def permuteMot(s: str) -> str :
    if len(s) > 3:
        r = s[0]
        chars = list(s[1:len(s)-1])
        while len(chars) > 0 :
            i = randint(0,len(chars) -1)
            r += chars[i]
            chars.remove(chars[i])
        r += s[len(s)-1]
    else:
        r = s      
    return r

def permuteMot_2(s: str) -> str :
    if len(s) > 3:
        r = s[0]
        while len(s) > 2 :
            i = randint(1,len(s)-2)
            r += s[i]
            s = s[0:i] + s[i+1:]
        r += s[1]
    else:
        r = s    
    return r
```
=== 5.12.2 `permute()`

```python
def permute(phrase: str):
    r = ""
    sp = " "
    pos = 0
    while pos < len(phrase):
        end = phrase.find(" ", pos)
        if end == -1:
            end = len(phrase)
            sp = ""
        r += permuteMot(phrase[pos:end]) + sp
        pos = end + 1
    return r
```
=== 5.12.3

```python
phrase = str(input("Votre phrase : "))
    print(f"\"{permute(phrase)}\"")
```

== Exercice 5.13

On stocke les mots dans un dictionnaire dont les clés sont les mots et les valeurs une liste des positions.

```python
def add_to_words(words: dict[list[int]], word:str, pos: int):
    if word in words:
        words[word].append(pos)
    else:
        words[word] = [pos]

def display_words(words):
    for w in words:
        print(f"\"{w}\"", end=" :")
        sep = " "
        for p in words[w]:
            print(f"{sep}{p}", end="")
            sep = ", "
        print("")

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

def find_words(phrase: str):
    r: dict[list[int]] = {}

    pos = 0
    while (w := find_next_word(phrase, pos))["word"] != "":
        add_to_words(r, w["word"], w["pos"])
        pos = w["pos"] + len(w["word"])
    return r

p = str(input("Phrase : "))
words = find_words(p)
display_words(words)
```

On notera l'ordre des tests des boucles `while` : python arrête d'évaluer une condition quand il sait qu'elle est fausse ; donc, lorsqu'on est en fin de phrase (`pos = len(phrase)`), il ne teste pas la deuxième condition (sur `phrase[pos]`) qui aurait provoqué une erreur car on est alors au-delà de la chaîne de caractères.

Plutôt que d'analyser chaque caractère pour trouver la fin du mot, on pourrait chercher la prochaine espace (avec `phrase.find(" ", pos)`) mais il faudrait alors gérer le cas de la fin de chaîne sans espace (`-1`) ; la solution précédente peut en outre être facilement améliorée pour gérer la ponctuation.

On remarquera encore l'opérateur _walrus_ (`':='`) dans `find_words()` qui permet d'assigner la valeur et de la tester dans la même expression.

#codly(header: [*Version améliorée de `find_next_word()`*])
```python
def find_next_word(phrase: str, pos: int=0):
    # Caractères ne faisant pas partie des mots
    delimiters = [" ", ",", ";", ".", ":", "?", "!", "'", '"']
    r = { "word": "" }
    # On passe les éventuelles espaces
    # NB : on teste d'abord la position pour éviter l'IndexError en fin de chaîne
    while pos < len(phrase) and phrase[pos] in delimiters:
        pos +=1
    # On stocke la position de l'éventuel (on peut être à la fin de la chaîne) mot
    r["pos"] = pos
    # On lit les lettres
    while pos < len(phrase) and not phrase[pos] in delimiters:
        # On passe en minuscules
        r["word"] += phrase[pos].lower()
        pos +=1
    return r
```
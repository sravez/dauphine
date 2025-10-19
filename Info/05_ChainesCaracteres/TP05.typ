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


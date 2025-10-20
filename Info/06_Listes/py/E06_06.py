from functools import reduce

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


def moyenne_2(resultats, eleve: str) -> float:
    notes = [ r[2] for r in resultats if r[0] == eleve]
    if len(notes) > 0:
        return reduce(lambda x,y: x+y, notes) / len(notes)
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

print(moyenne_2(resultats, "Bob")) # 10.75
print(moyenne_2(resultats, "Zoe")) # 14.0
print(moyenne_2(resultats, "Doe")) # None
from functools import reduce

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


def get_stats(notes: list[float])->dict:
    if len(notes) == 0:
        return {
            "mean" : None,
            "max"  : None,
            "good" : None,
            "best" : None
        }
    else:
        # Moyenne de la classe
        m = sum(notes) / len(notes)
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


if __name__ == "__main__":
    n = int(input("Nombre de notes : "))
    notes = get_notes(n)
    stats = get_stats(notes)
    display_stats(stats)
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


def analyze_notes(notes: list[float])->dict:
    m = reduce(lambda x,y: x+y, notes) / len(notes)
    M = max(notes)
    good = 0
    best:list[int] = []
    
    # Détermination des populations
    for i in range(0, len(notes)):
        if notes[i] >= m :
            good +=1
        if notes[i] == M:
            best.append(i)

    # Retourne les statistiques
    return {
        "mean" : m,
        "max"  : M,
        "good" : good,
        "best" : best
    }


def display_stats(stats: dict)->None:
    # Affichage
    print("Moyenne       :", round(stats["mean"],1))
    print("≥ moyenne     :", stats["good"])
    print("Note maximale :", stats["max"])
    print("Meilleurs     :", ", ".join([str(s) for s in stats["best"]]))


if __name__ == "__main__":
    n = int(input("Nombre de notes : "))
    notes = get_notes(n)
    stats = analyze_notes(notes)
    display_stats(stats)
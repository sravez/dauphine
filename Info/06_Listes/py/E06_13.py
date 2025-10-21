from functools import reduce

g_students = ["Florian","Antoine","Charles1","Robert","Charles2","Erwan","Jean","Xavier","Didier","Alain","Hadi"]
g_notes    = [ 2       , 12      , 0        , 0      , 8        , 7     , 20   , 11     , 20     , 0     , 12   ]


def moyenne(notes: list[float]) -> float:
    if len(notes) > 0:
        return sum(notes)/len(notes)
    else:
        return None

def print_results(students: list[str], notes: list[float])->None:
    w = max([len(s) for s in students])
    for i in range(0, len(students)):
        print(f"{students[i]:<{w}} : {notes[i]:4.1f} => {'recalé' if notes[i]<10 else 'admis'}")

print("Moyenne   : ", round(moyenne(g_notes), 1))
print_results(g_students, g_notes)

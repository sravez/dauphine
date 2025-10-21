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
    

def split_ok_ko(students, notes):
    ok_students = []
    ok_notes = []
    ko_students = []
    ko_notes = []
    for i in range(0, len(students)):
        if notes[i]>= 10 :
            ok_students.append(students[i])
            ok_notes.append(notes[i])
        else:
            ko_students.append(students[i])
            ko_notes.append(notes[i])
    
    return {
        "ok_students": ok_students,
        "ok_notes"   : ok_notes,
        "ko_students": ko_students,
        "ko_notes"   : ko_notes,
    }

def remove_zeroes_afterwards(students, notes):
    zeroes = []
    for i in range(0, len(students)):
        if notes[i] == 0:
            zeroes.append(i)
    for j in range(0, len(zeroes)):
        notes.pop(zeroes[j]-j)
        students.pop(zeroes[j]-j)

def remove_zeroes_backwards(students, notes):
    for i in range(len(students)-1, -1, -1):
        if notes[i] == 0:
            notes.pop(i)
            students.pop(i)

def remove_zeroes_forwards(students, notes):
    i = 0
    while i < len(students):
        while i < len(notes) and notes[i] == 0:
            notes.pop(i)
            students.pop(i)
        i += 1

def remove_zeroes_search(students: list[str], notes: list[float]):
    pos = 0
    while pos >=0:
        try:
            pos = notes.index(0, pos)
        except:
            pos = -1
        else:
            students.pop(pos)
            notes.pop(pos)

def remove_zeroes_count_index(students: list[str], notes: list[float]):
    pos = 0
    while notes.count(0) > 0:
        pos = notes.index(0, pos)
        students.pop(pos)
        notes.pop(pos)

print("Moyenne   : ", round(moyenne(g_notes), 1))
print_results(g_students, g_notes)

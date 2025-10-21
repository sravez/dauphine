g_students = ["Florian","Antoine","Charles1","Robert","Charles2","Erwan","Jean","Xavier","Didier","Alain","Hadi"]
g_notes    = [ 2       , 12      , 0        , 0      , 8        , 7     , 20   , 11     , 20     , 0     , 12   ]

ok_students = []
ok_notes = []
ko_students = []
ko_notes = []

def print_results()->None:
    for i in range(0, len(ok_students)):
        print(f"{ok_students[i]:<10} : {ok_notes[i]:4.1f} => admis")
    for i in range(0, len(ko_students)):
        print(f"{ko_students[i]:<10} : {ko_notes[i]:4.1f} => recalé")

def moyenne()-> float:
    n = len(ok_notes) + len(ko_notes)
    if n > 0 :
        return (sum(ok_notes) + sum(ko_notes))/ n
    else:
        return None
    
def split_ok_ko(students, notes):
    for i in range(0, len(students)):
        if notes[i]>= 10 :
            ok_students.append(students[i])
            ok_notes.append(notes[i])
        else:
            ko_students.append(students[i])
            ko_notes.append(notes[i])

def remove_zeroes(students, notes):
    for i in range(len(students)-1, -1, -1):
        if notes[i] == 0:
            notes.pop(i)
            students.pop(i)

def get_new_notes():
    resp = 1
    while resp == 1:
        resp = int(input("Voulez-vous saisir une nouvelle note (1: oui ; 0 : non): "))
        if resp != 0 :
            student = str(input("Etudiant : "))
            note = float(input("Note : "))
            if note < 10  and note > 0:
                ko_students.append(student)
                ko_notes.append(note)
            elif note >= 10 :
                ok_students.append(student)
                ok_notes.append(note)

split_ok_ko(g_students, g_notes)
get_new_notes()
remove_zeroes(ko_students, ko_notes)
print("Moyenne   : ", round(moyenne(), 1))
print_results()

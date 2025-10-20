students = ["Florian","Antoine","Charles1","Robert","Charles2","Erwan","Jean","Xavier","Didier","Alain","Hadi"]
notes    = [ 2       , 12      , 0        , 0      , 8        , 7     , 20   , 11     , 20     , 0     , 12   ]


for i in range(len(students)-1, -1, -1):
    ok = []
    ko = []
    if notes[i] == 0:
        notes.pop(i)
        students.pop(i)
    else:
        s = students[i] + " : "
        if notes[i]>= 10 :
            s += "admis"
            ok.append(students[i])
        else:
            s += "recalé"
            ko.append(students[i])
        print(s)

print("Moyenne : ", round(sum(notes)/len(notes), 1))
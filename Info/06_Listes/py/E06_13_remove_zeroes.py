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
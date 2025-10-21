from random import randint
from time import monotonic

def remove_zeroes_afterwards(notes):
    zeroes = []
    for i in range(0, len(notes)):
        if notes[i] == 0:
            zeroes.append(i)
    for j in range(0, len(zeroes)):
        notes.pop(zeroes[j]-j)

def remove_zeroes_backwards(notes):
    for i in range(len(notes)-1, -1, -1):
        if notes[i] == 0:
            notes.pop(i)

def remove_zeroes_forwards(notes):
    i = 0
    while i < len(notes):
        while i < len(notes) and notes[i] == 0:
            notes.pop(i)
        i += 1

def remove_zeroes_search(notes: list[float]):
    pos = 0
    while pos >=0:
        try:
            pos = notes.index(0, pos)
        except:
            pos = -1
        else:
            notes.pop(pos)

def remove_zeroes_count_index(notes: list[float]):
    pos = 0
    while notes.count(0) > 0:
        pos = notes.index(0, pos)
        notes.pop(pos)

def get_list_of_lists(n=5, l_max=50, v_max=20):
    r = []
    for i in range(0,n):
        l = [ randint(0, v_max) for j in range(0, randint(0, l_max)) ]
        r.append(l)
    return r


def test(s: str, func):
    lists = get_list_of_lists(10000,100)
    start = monotonic()
    for l in lists:
        func(l)
    end = monotonic()
    print(f"{s:<12}:", end - start) 

test("search",remove_zeroes_search)
test("count_index",remove_zeroes_count_index)
test("backwards",remove_zeroes_backwards)
test("afterwards",remove_zeroes_afterwards)
test("forwards",remove_zeroes_forwards)
    
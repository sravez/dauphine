from random import randint

def get_list_of_lists(n=5, l_max=6, v_max=9):
    r = []
    for i in range(0,n):
        l = [ randint(0, v_max) for j in range(0, randint(0, l_max)) ]
        r.append(l)
    return r

def get_sum_of_first_longest_sublist(lol):
    l = 0
    s = 0
    for sl in lol:
        if len(sl) > l:
            l = len(sl)
            s = sum(sl)
    return s

l = get_list_of_lists()
print(l)
print(get_sum_of_first_longest_sublist(l))
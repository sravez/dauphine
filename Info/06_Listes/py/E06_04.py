def LRES(l1: list[int], l2: list[int]) -> list[int]:
    # Résultat
    r: list[int]
    # Référence vers la liste la plus courte
    short: list[int]

    if len(l1) >= len(l2):
        r = l1.copy()
        short = l2
    else:
        r = l2.copy()
        short = l1

    for i in range(0, len(short)):
        r[i] += short[i]
    
    return r


def LRES_2(l1: list[int], l2: list[int]) -> list[int]:
    # Résultat
    r: list[int] = []
    # Référence vers la liste la plus longue
    long : list[int]
    # Référence vers la liste la plus courte
    short: list[int]

    if len(l1) >= len(l2):
        long = l1
        short = l2
    else:
        long = l2
        short = l1

    for i in range(0, len(short)):
        r.append(long[i]+short[i])
    
    r.extend(long[len(short):])
    return r

print(LRES([1,2,3,4,5],[2,15,18]))
print(LRES_2([1,2,3,4,5],[2,15,18]))
print(LRES_2([1,2,3,4,5],[1,2,3,4,5]))
print(LRES_2([1,2,3,4,5],[]))

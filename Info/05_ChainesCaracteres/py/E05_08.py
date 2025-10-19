def has_space(s: str) -> bool:
    for i in range(0, len(s)):
        if s[i] == " ":
            return True
    return False

def get_str_wo_space(p: str) -> str:
    r = " "
    e = ""
    while r.count(" ") > 0:
        r = str(input(e+p))
        e = "Pas d'espace - "
    return r

def has_multiple_occurences(s: str) -> bool:
    used = ""
    for i in range(0, len(s)):
        if used.find(s[i]) >= 0:
            return True
        used += s[i]
    return False


def test(n: int, s1: str, s2: str) -> bool:
    if has_multiple_occurences(s2):
        return False
    else:
        return s1.count(s2) >= n

'''
print(test(1,"habhabab" , "abh"))
print(test(2,"habhabab" , "abh"))
print(test(3,"habhabab" , "ab"))
print(test(4,"habhabab" , "ab"))
print(test(2,"baaabaa"  , "aa"))
print(test(3,"baaabaa"  , "aa"))
print(test(3,"ababaaaba", "ab"))
'''

n  = int(input("Nombre d'occurences : "))
s1 = get_str_wo_space("Chaîne contenante   : ")
s2 = str(input("Motif à rechercher  : "))

if test(n,s1,s2):
    print("oui")
else:
    print("non")
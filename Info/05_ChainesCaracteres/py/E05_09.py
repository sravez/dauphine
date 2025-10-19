def test2_3(s1:str, s2: str) -> int:
    n = len(s1) // len(s2)
    if s1 == n * s2:
        return n
    else:
        return 0

def test2_2(s1: str, s2: str) -> int:
    n = 0
    if len(s1) % len(s2) == 0:
        n = len(s1) // len(s2)
        for i in range(0,n):
            start = i * len(s2)
            if s1[start:start + len(s2)] != s2 :
                n = 0
                break
    return n

def test2(s1: str, s2: str) -> int:
    start = 0
    n = 0
    while start < len(s1):
        if s1[start:start + len(s2)] == s2 :
            start += len(s2)
            n += 1
        else:
            n = 0
            break
    return n
'''
print(test2("ababab","ab"))
print(test2("ab","ab"))
print(test2("abhabab","ab"))
print(test2("aaaa","aa"))
print(test2("aaa","aa"))
print(test2("aaa","a"))

print(test2_2("ababab","ab"))
print(test2_2("ab","ab"))
print(test2_2("abhabab","ab"))
print(test2_2("aaaa","aa"))
print(test2_2("aaa","aa"))
print(test2_2("aaa","a"))
'''
print(test2_3("ababab","ab"))
print(test2_3("ab","ab"))
print(test2_3("abhabab","ab"))
print(test2_3("aaaa","aa"))
print(test2_3("aaa","aa"))
print(test2_3("aaa","a"))

s1 = str(input("Chaîne 1 : "))
s2 = str(input("Chaîne 2 : "))

if (n := test2(s1, s2)) > 0:
    print(n)
else:
    print("non")

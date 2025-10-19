from random import randint
    
def permuteMot_1(s: str) -> str :
    r = s[0]
    chars = s[1:len(s)-1]
    while len(chars) > 0 :
        i = randint(0,len(chars) -1)
        r += chars[i]
        chars = chars[0:i] + chars[i+1:]
    r += s[len(s)-1]    
    return r

def permuteMot(s: str) -> str :
    r = s[0]
    chars = list(s[1:len(s)-1])
    while len(chars) > 0 :
        i = randint(0,len(chars) -1)
        r += chars[i]
        chars.remove(chars[i])
    r += s[len(s)-1]    
    return r
print(permuteMot("UnSuperlongMot"))
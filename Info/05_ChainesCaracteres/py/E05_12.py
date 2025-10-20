from random import randint
    
def permuteMot(s: str) -> str :
    if len(s) > 3:
        r = s[0]
        chars = list(s[1:len(s)-1])
        while len(chars) > 0 :
            i = randint(0,len(chars) -1)
            r += chars[i]
            chars.remove(chars[i])
        r += s[len(s)-1]
    else:
        r = s      
    return r

def permuteMot_2(s: str) -> str :
    if len(s) > 3:
        r = s[0]
        while len(s) > 2 :
            i = randint(1,len(s)-2)
            r += s[i]
            s = s[0:i] + s[i+1:]
        r += s[1]
    else:
        r = s    
    return r

def permute(phrase: str):
    r = ""
    sp = " "
    pos = 0
    while pos < len(phrase):
        end = phrase.find(" ", pos)
        if end == -1:
            end = len(phrase)
            sp = ""
        r += permuteMot(phrase[pos:end]) + sp
        pos = end + 1
    return r


if __name__ == "__main__":
    phrase = str(input("Votre phrase : "))
    print(f"\"{permute(phrase)}\"")
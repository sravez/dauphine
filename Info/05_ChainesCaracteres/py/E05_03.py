def remove_short_words(s:str, l:int)->str:
    r = ""
    w = ""
    sp = ""
    for i in range(0, len(s)):
        if s[i] != " ":
            w += s[i]
        if s[i] == " " or i == len(s)-1 :
            if len(w)>l:
                r += sp+w
                sp = " "
            w = ""
    return r

print(remove_short_words("bonjour les amies !", 3))
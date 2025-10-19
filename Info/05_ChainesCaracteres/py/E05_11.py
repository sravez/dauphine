def hidden_in(needle: str, haystack: str) -> bool:
    n = 0
    h = 0
    f = -1
    while n < len(needle) and h < len(haystack):
        while h < len(haystack):
            h += 1
            if needle[n] == haystack[h-1]:
                f = n
                break
        n +=1
    
    return f == len(needle) - 1

print(hidden_in("needle","_nhayesetdlacke"))
print(hidden_in("needle","nhayesetlacke"))
def remove_repetitions(s: str) -> str:
    r = ""
    last = ""
    for i in range(0, len(s)):
        if s[i] != last:
            r += (last := s[i])
    return r

s = str(input("Saisissez une chaîne : "))
print(f"Chaîne sans répétition : '{remove_repetitions(s)}'")
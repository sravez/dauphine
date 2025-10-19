def remove_spaces(s: str)-> str:
    r = ""
    for i in range(0, len(s)):
        if s[i] != " ":
            r += s[i]
    return r

s = str(input("Saisissez une chaîne : "))

print(f"Chaîne      : '{s}'")
print(f"Longueur    : {len(s)}")
print(f"Sans espace : '{remove_spaces(s)}'")

def replace_at_position(s: str, pos: int, w:str ="?") -> str :
    if pos >= 0 and pos < len(s):
        return s[0:pos] + w + s[pos+1:]
    else:
        print("Mauvais indice")
        return s
        

s = str(input("Saisissez une chaîne : "))
print(f"Chaîne : '{s}'")

while True:
    i = int(input("Saisissez un indice (-1 pour arrêter) : "))
    if(i == -1):
        break
    s = replace_at_position(s, i)
    print(f"Chaîne : '{s}'")

def add_to_words(words: dict[list[int]], word:str, ind: int):
    if word in words:
        words[word].append(ind)
    else:
        words[word] = [ind]

def find_next_word(phrase: str, pos: int=0):
    r = { "word": "" }
    # On passe les éventuelles espaces
    while pos < len(phrase) and phrase[pos] == " ":
        pos +=1
    # On stocke la position de l'éventuel mot (on peut être à la fin de la chaîne)
    r["pos"] = pos
    # On lit les lettres
    # NB : on teste d'abord la position pour éviter l'IndexError en fin de chaîne
    while pos < len(phrase) and phrase[pos] != " ":
        r["word"] += phrase[pos]
        pos +=1
    return r

def get_words(phrase: str):
    r: dict[list[int]] = {}

    pos = 0
    while (w := find_next_word(phrase, pos))["word"] != "":
        add_to_words(r, w["word"], w["pos"])
        pos = w["pos"] + len(w["word"])
    return r

print(get_words(" ab cda fg ab   fg cda h cda    "))

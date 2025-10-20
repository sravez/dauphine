def add_to_words(words: dict[list[int]], word:str, pos: int):
    if word in words:
        words[word].append(pos)
    else:
        words[word] = [pos]

def display_words(words):
    for w in words:
        print(f"\"{w}\"", end=" :")
        sep = " "
        for p in words[w]:
            print(f"{sep}{p}", end="")
            sep = ", "
        print("")

def find_next_word(phrase: str, pos: int=0):
    # Caractères ne faisant pas partie des mots
    delimiters = [" ", ",", ";", ".", ":", "?", "!", "'", '"']
    r = { "word": "" }
    # On passe les éventuelles espaces
    # NB : on teste d'abord la position pour éviter l'IndexError en fin de chaîne
    while pos < len(phrase) and phrase[pos] in delimiters:
        pos +=1
    # On stocke la position de l'éventuel (on peut être à la fin de la chaîne) mot
    r["pos"] = pos
    # On lit les lettres
    while pos < len(phrase) and not phrase[pos] in delimiters:
        # On passe en minuscules
        r["word"] += phrase[pos].lower()
        pos +=1
    return r

def find_words(phrase: str):
    r: dict[list[int]] = {}
    pos = 0
    while (w := find_next_word(phrase, pos))["word"] != "":
        add_to_words(r, w["word"], w["pos"])
        pos = w["pos"] + len(w["word"])
    return r


if __name__ == "__main__":
    p = str(input("Phrase : "))
    words = find_words(p)
    display_words(words)

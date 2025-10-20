def display_n(s:str)->None:
    l = len(s)
    for i in range(0, l):
        line = s[i]
        sp1 = (l-2+i) % (l-1)
        line += (sp1 * " ") + s[i]
        if sp1 != l-2:
            line += (l-3-sp1)*" " + s[i]
        print(line)

display_n("abcde")
display_n("napoléon")
def display_x(s:str)-> None:
    l = len(s)
    for i in range(0, l):
        j = min(i,l-i-1)
        c1 = s[j]
        if j == l - j -1:
            c2 = ""
        else:
            c2 = s[l-j-1]
        print(f"{j*" "}{c1}{(l-2*j-2)*" "}{c2}")

display_x("MAGIQUE")
display_x("PYTHON")
display_x("MAGIQUEPYTHON")
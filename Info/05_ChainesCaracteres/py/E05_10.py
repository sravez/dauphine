def display_x(s:str)-> None:
    m = len(s)
    for l in range(0, m):
        c = min(l, m-1-l)
        c1 = s[c]
        if c == m - c -1:
            c2 = ""
        else:
            c2 = s[m-c-1]
        print(f"{c*" "}{c1}{(m - 2*c -2)*" "}{c2}")

display_x("MAGIQUE")
display_x("PYTHON")
display_x("MAGIQUEPYTHON")



def display(n: int, p: int):
    l = [ 7 * i for i in range(1,21)]
    m = 0
    sep = ""
    for i in l:
        print(sep, f"{i: >3}", end="")
        sep = " ;"
        if i % p == 0:
            m +=1
            print("")
            sep = ""
    print("")
    print(f"Multiples de {p} :", m)

display(20,3)

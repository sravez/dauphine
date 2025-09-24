def is_perfect(n):
    s = 0
    d = 1
    while d<n:
        if n%d == 0:
            s += d
        d += 1
    return 0 < n == s

i = int(input("Début ? "))
j = int(input("Fin ? "))
f = max(i, j)

while i <= f :
    if is_perfect(i):
        print(i, "est un entier parfait")
    i += 1
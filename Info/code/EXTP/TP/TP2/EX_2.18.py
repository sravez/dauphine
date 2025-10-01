def get_positive_integer(prompt: str) -> int:
    p = prompt
    n = -1
    while n < 0:
        n = int(input(p))
        p = "  [Erreur] Saisissez un entier positif : "
    return n

n = get_positive_integer("Nombre d'entiers : ")
sum_odd = 0
sum_even = 0

m = 1
while  m <= n:
    i = get_positive_integer("Entier " + str(m) + "/" + str(n) +" positif : ")
    if i % 2 == 0:
        sum_even += i
    else:
        sum_odd += i
    m += 1

if sum_odd == sum_even:
    print("La somme des nombres pairs est égale à la somme des nombres impairs")
else:
    print("La somme des nombres pairs n'est pas égale à la somme des nombres impairs")
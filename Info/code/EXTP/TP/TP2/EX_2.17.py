
n = -1
while n < 0:
    n = int(input("Nombre d'entiers : "))

sum_odd = 0
sum_even = 0

while n > 0:
    i = -1
    while i < 0:
        i = int(input("Entrez un entier positif : "))
    if i % 2 == 0:
        sum_even += i
    else:
        sum_odd += i
    n -= 1

if sum_odd == sum_even:
    print("La somme des nombres pairs est égale à la somme des nombres impairs")
else:
    print("La somme des nombres pairs n'est pas égale à la somme des nombres impairs")

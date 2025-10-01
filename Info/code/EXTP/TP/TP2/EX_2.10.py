# On considèra que 0**0 = 1
x = -1.0
while x < 0:
    x = float(input("Entrez un nombre positif : "))
n = -1
while n < 0:
    n = int(input("Entrez un entier positif : "))

print(f"{x}^{n} = ", end = "")
r = 1.0
while n > 0:
    r = r * x
    n = n - 1

print(r)
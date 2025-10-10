from AAR import AleatoireAvecRepetitions

n = 0
while n <= 0:
    n = int(input("Nombre de 1 requis par tirage (>0) : "))

iterations = 1000

total_last = 0
total_nb = 0
for i in range(0, iterations):
    t = AleatoireAvecRepetitions(n)
    total_last += t["last"]
    total_nb += t["nb"]

print("Nombre de 1 :",total_last)
print("Nombre moyen de tirages :", total_nb / iterations)
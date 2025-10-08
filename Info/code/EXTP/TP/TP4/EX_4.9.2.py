from AAR import AleatoireAvecRepetitions

n = int(input("Nombre de 1 requis par tirage : "))

repetitions = 1000
total = 0

while repetitions > 0:
    t = AleatoireAvecRepetitions(n)
    total += t["nb"]
    repetitions -= 1

print (total, total / 1000)
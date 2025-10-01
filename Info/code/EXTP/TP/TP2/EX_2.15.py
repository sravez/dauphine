deposit = 6_000.0
rate = 0.015
target = 7_000.0

total = deposit
year = 0

while total < target:
    total += total * rate
    year += 1

print("Nombre d'années nécessaires :", year)

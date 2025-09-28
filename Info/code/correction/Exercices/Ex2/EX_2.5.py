from strict_factors import is_perfect

print("Liste des entiers parfait d'un intervalle")

i = int(input("Début ? "))
j = int(input("Fin ? "))
v = 1
if i != j:
    v = int((j-i)/abs(j-i))
# Parcours de l'intervalle
while i != (j+v) :
    if is_perfect(i):
        print(i, "est un entier parfait")
    i += v
print("Examen terminé")

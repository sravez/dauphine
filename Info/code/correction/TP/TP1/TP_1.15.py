# Saisie des données
nom = str(input("Nom de famille : "))
prenom = str(input("Prénom : "))
ville = str(input("Ville de naissance : "))
sexe = str(input("Sexe (H/F) : "))
dpt = int(input("Département de naissance : "))

print("------------------------------")

if not((dpt>=1 and dpt<=95) or (dpt>=971 and dpt<=976) or dpt == 976):
    print("Votre numéro de département est erroné !")
    dpt = "?"

hf = "un homme né"
if sexe == "F":
    hf = "une femme née"
elif sexe != "H":
    hf = "de sexe inconnu et né"

print(f"Vous vous appelez {prenom} {nom}.")
print(f"Vous êtes {hf} à {ville} ({dpt}).")
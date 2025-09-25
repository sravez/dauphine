nom = str(input("Nom de famille : "))
prenom = str(input("Prénom : "))
ville = str(input("Ville de naissance : "))
sexe = str(input("Sexe (H/F) : "))
dpt = int(input("Département de naissance :"))

if not((dpt>=1 and dpt<=95) or (dpt>=971 and dpt<=976) or dpt == 976):
    print("Votre numéro de département est erroné !")
else:
    print("Vous vous appelez", prenom, nom)
    if sexe == "H":
        print("Vous êtes un homme né à", ville, "("+str(dpt)+")")
    else:
        print("Vous êtes une femme née à", ville, "("+str(dpt)+")")

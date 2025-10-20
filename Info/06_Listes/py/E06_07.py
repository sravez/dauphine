#Fonction qui compte le nombre de mots d'une chaine
# et le nombre de caractères par mot 
def compteMotsEtCaracteres(ch):
    i = 0
    nbMots = 0
    affichage = ""

    while i < len(ch):
        mot = ""
        #Récupération du mot courant
        while (i < len(ch) and ch[i] != " "):
            mot += ch[i]
            i += 1
            
        #Pour ne compter que les mots non vides
        if mot != "":
            nbMots += 1
            affichage += "Le mot \"" + mot + "\" contient : \n"
            
            #Pour compter les caractères du mot courant
            while (mot != ""):
                affichage += "  " + str(mot.count(mot[0])) + " fois le caractère '" + mot[0] + "'\n"
                mot = mot.replace(mot[0], "")
        i += 1
        
    if nbMots != 0:
        print("La chaine \"", ch, "\" contient : ", nbMots,
        		" mots\n", affichage, sep="", end="")
        
compteMotsEtCaracteres("ananas poire kiwi")

#Fonction qui compte le nombre de mots d'une chaine
# et le nombre de caractères par mot 
def compteMotsEtCaracteres(ch):
    i = 0
    
    while i < =len(ch):
        mot = ""
        affichage = ""
        #Récupération du mot courant
        while (i <= len(ch) and ch[i] != " "):
            mot = mot + ch[i]
            i = i+1
            
        #Pour ne compter que les mots non vides
        if mot != "":
            nbMots = nbMots + 1
            affichage = affichage + "Le mot \"" + mot +
            			"\" contient : \n"
            
            #Pour compter les caractères du mot courant
            while (mot != ""):
                affichage = affichage + "  " +mot.count(mot[0]) +
            				" fois le caractère '" + mot[0] + "'\n"
                mot.replace(mot[0], "")
        i = i + 1
        
    if nbMots != 0:
        print("La chaine \", ch, "\" contient : ", nbMots,
        		" mots\n", affichage, sep="", end="")

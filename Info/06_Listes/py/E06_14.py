villes = ["Auxerre", "Avallon", "Clamecy", "Joigny", "Migennes"]

dists = [
    [ 0,  45, 35, 25,  20],
    [45,   0, 30, 70, 100],
    [35,  30,  0, 60,  55],
    [25,  70, 60,  0,  10],
    [20, 100, 55, 10,   0]
]
def lireDistance():
    distance = [[0 for j in villes] for i in villes]
    print("Entrez les distances entre les villes")
    for i in range(0, len(villes)-1):
        print("")
        for j in range(i+1, len(villes)):
            distance[i][j] = int(input(f"    {villes[i]:>8} <-> {villes[j]:<8} : "))
            distance[j][i] = distance[i][j]
    return distance

def check_consistency(d):
    pb = []
    for i in range (0, len(villes)):
        for j in range(i+1, len(villes)):
            for k in range(0, len(villes)):
                print(i,j,k, d[i][j],d[i][k] + d[k][j])
                if d[i][j] > d[i][k] + d[k][j]:
                    pb.append([i,j,k])
    return pb
    

def print_inconsistencies(pb):
    if len(pb) > 0:
        print(f"Il y a {len(pb)} incohérences : ")
        for p in pb:
            print(f"{villes[p[0]]} - {villes[p[1]]} - {villes[p[2]]}")
    else:
        print("Toutes les inégalités triangulaires sont respectées.")

print_inconsistencies(check_consistency(dists))

#distance = lireDistance()
#pb = check_consistency(distance)
#print_inconsistencies(pb)
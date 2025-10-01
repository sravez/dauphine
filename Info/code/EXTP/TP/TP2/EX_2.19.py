# La méthode brutale est de programmer 3 boucles imbriquées et de tester red+blue+green,
# on peut néanmoins sortir dès qu'on a une solution avec break.
#
# La boucle sur green n'est pas utile car il suffit de tester si 1 <= target - red - green <= 10.
#

def s1(n: int) -> int:
    s = 0
    red = 1
    while red <=6:
        green = 1
        while green <=8:
            blue = 1
            while blue <=10:
                if red + green + blue == n:
                    s += 1
                    break
                blue += 1
            green +=1
        red += 1
    return s

def s2(n: int) -> int:
    s = 0
    red = 1
    while red <=6:
        green = 1
        while green <= 8:
            if(0 < n - red - green < 11):
                s +=1
            green +=1
        red += 1
    return s


def s3(n: int) -> int:
    s = 0
    red = max(1, n - 18)
    while red <= min(6, n - 2) :
        green = max(1, n - red - 10)
        while green <= min(8, n - red - 1) :
            s += 1
            green += 1
        red += 1
    return s

def s4(n: int) -> int:
    s = 0
    red = max(1, n - 18)
    while red <= min(6, n - 2) :
        min_green = max(1, n - red - 10)
        max_green = min(8, n - red -1)
        s += max(0, max_green - min_green + 1)
        red += 1
    return s

#target = int(input("Entrez un nombre : "))
#print("Nombre de solutions :", s1(target), " / ", s2(target), " / ", s3(target), " / ", s4(target))

for i in range(3, 25):
    print(f"[{i}], [{s4(i)}],")
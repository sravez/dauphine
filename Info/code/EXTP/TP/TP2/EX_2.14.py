# PPCM
# On utilise ma avec a et mb avec b que l'on incrémente par a et b

a = int(input("a : "))
b = int(input("b : "))

ma = a
mb = b

while ma != mb:
    if ma > mb:
        mb += b
    else:
        ma += a

print(f"Le PPCM de {a} et {b} est {ma}")

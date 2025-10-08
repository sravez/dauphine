import random, time

n = 10
vmin = 10
vmax = 50
interval = 0.1

while n > 0:
    print(min(vmax,vmin + (vmax - vmin + 0.01) * random.random()))
    n -=1
    if n > 0:
        time.sleep(interval)
import random, time

n = 10
vmin = 10
vmax = 50
interval = 1

while n > 0:
    print(random.uniform(vmin, vmax))
    n -=1
    if n > 0:
        time.sleep(interval)
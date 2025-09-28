import time
import strict_factors as sf

n = int(input("n? "))

# On chronomètre S2
start = time.monotonic_ns()
s2 = sf.sum_of_strict_factors(n)
end = time.monotonic_ns()
t2 = (end - start)
print("S2 =", s2, "en", t2, "ns")

# On chronomètre S1
start = time.monotonic_ns()
s1 = sf.sum_basic(n)
end = time.monotonic_ns()
t1 = (end - start)
print("S1 =", s1, "en", t1, "ns")

print("t1 / t2 =", int(t1 / t2))
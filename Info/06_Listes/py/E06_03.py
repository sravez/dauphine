
def get_u_list(n: int) -> list[int]:
    u = [1,2]
    for i in range(2, n+1):
        u.append(5*u[i-1] + 10*u[i-2])
    return u

print(get_u_list(5))
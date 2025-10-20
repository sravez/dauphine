from math import floor

def palindrome(s: str)->bool:
    r = True
    for i in range(0, floor(len(s)/2)):
        r = r and s[i]==s[len(s)-1-i]
    return r

print(palindrome("kayak"))
print(palindrome("kayyak"))
print(palindrome("koyak"))
print(palindrome("koyyak"))
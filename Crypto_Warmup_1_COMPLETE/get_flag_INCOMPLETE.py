#!/usr/bin/env python

alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
key = 'thisisalilkey'.upper()
key = list(key)

target = 'llkjmlmpadkkc'.upper()
target = list(target)

auxArr = alphabet

ans = ''

def rotate(l, n):
    return l[n:] + l[:n]

print ("\t", len(alphabet))
for i in range(len(target)):

    rotateNo = alphabet.index(key[i])
    print ("\trotate no: " + str(rotateNo))
    auxArr = rotate(auxArr, rotateNo)
    letter = alphabet[alphabet.index(auxArr[i])]

    print ("\t" + letter)
    ans += letter
    auxArr = alphabet

print("".join(ans).lower())


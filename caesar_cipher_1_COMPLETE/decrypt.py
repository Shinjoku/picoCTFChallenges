#!/usr/bin/env python3

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', ]

fp = open('./encrypted', 'r')
message = list((fp.read().replace('\n', '')))

print(str(message))

for i in range(26):
    for letter in message:
        print(chr(ord(letter) + i), end='')

    print('')

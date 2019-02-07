#!/bin/bash
cat ncData.txt | grep -oE 'picoCTF{.*}' --color=none

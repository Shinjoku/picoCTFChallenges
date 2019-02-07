#!/bin/bash
strings file | grep -oE 'picoCTF{.*}' --color=none

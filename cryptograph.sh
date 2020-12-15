#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
arg=$1

if test -a $arg 
then
	echo -e "${GREEN}file"
elif ![ $arg -eq $arg ] 2>/dev/null
then
	echo -e "${BLUE}number\n"
	python3 crypto.py 
else
	echo -e "${RED}string"
fi

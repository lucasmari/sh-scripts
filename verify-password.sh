#!/bin/bash
RED='\e[0;31m'
GREEN='\e[0;32m'

read -p "Enter the password: " pass

if test "$pass" = "kkk"
then
	echo -e "${GREEN}Access granted."
else
	echo -e "${RED}Access denied."
fi

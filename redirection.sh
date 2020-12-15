#!/bin/bash
BLUE='\e[0;34m'
GREEN='\e[0;32m'
arg=$1

if [[ $arg -eq $arg ]] 2> /dev/null
then
    echo -e "${BLUE}It's a number!"
else
    echo -e "${GREEN}It's a string!"
fi

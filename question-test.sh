#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

for file in ~/.*
do
  b=true

  while $b
  do
    read -p "Do you want to backup ${file}? (y/n)? " op

    if [[ $op =~ ^[Yy]$ ]] || [[ $op = '' ]]
    then
      echo -e "\n${GREEN}Backing up ${file}...${NC}\n"
      b=false
    elif [[ $op =~ ^[Nn]$ ]]
    then
      b=false
    else
      echo -e "\n${RED}Invalid option!\n${NC}"
    fi
  done
done

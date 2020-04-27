#!/bin/bash 

while true;

do
    ping -c 5 8.8.8.8
    if [[ $? -eq 0 ]]; then
    echo -e "\e[32m Internet seems to be connected \e[0m"

    elif
        [[ $? -eq 1 ]]; then
        echo -e "\e[31mThere is no connection. \e[0m"
    
    fi 
read -p "Enter a website URL to download or type 'exit' to quit: " website
if [[ $website == "exit" ]]; then 
exit 0 
else
    wget $website
fi 
continue 
done
 
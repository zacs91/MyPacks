#!/bin/bash

read -p "Type the name of the folder you would like to copy: " foldername

if [ -d "$foldername" ]; then 
    read -p "type the name of the destination folder: " newFold
    cp -r "$foldername" "$newFold" 
    
    else
        echo "I couldnt find that folder"
fi 
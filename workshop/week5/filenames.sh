#!/bin/bash
while IFS= read -r type
do 

    if [[  -f $type ]]; then
    echo "$type that file exists"

    elif [[ -d $type ]]; then
    echo "That is a directory"

    else
        echo "I dont know what that is"
fi 


done < filenames.txt 
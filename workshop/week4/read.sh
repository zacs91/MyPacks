#!/bin/bash

if [ -f secret.txt ]; then # check to see if txt file does exist in current directory 
     cat secret.txt  # display contents of secret.txt to terminal 
else 
    echo "there is no file of that name! " # if it doesnt exist, print this error message 

fi 
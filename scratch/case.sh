#!/bin/bash

echo -e "\n1. Create a folder \n2. List files in folder \n3. Copy a folder\
 \n4. Save a password \n5. Read a password \n6. Print newest file \n"

read -p "Enter the number of what you would like to do: " option

case $option in
  "1") echo "Create a folder"
  ./foldermaker.sh
  ;;
  "2")
esac

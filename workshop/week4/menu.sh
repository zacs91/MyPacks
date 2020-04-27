#!/bin/bash

echo -e "Here are the options you can choose\n" "1. Create a folder\n" "2. List files in a folder\n" \
"3. Copy a folder\n" "4. Save a password\n" "5. Read a password\n" "6. Print newest file\n" \
"7. Make multiple numbered folders\n" "8. Ping sweep IP and download website\n"

read -p "Please enter the number of what you would like to do: " i 

case $i in
    "1")
        cd ~/Documents/Bash-CSP2101/workshop/week3 && ./foldermaker.sh;;
    "2")
        cd ~/Documents/Bash-CSP2101/workshop/week3 && ./folderlister.sh;;
    "3")
        cd ~/Documents/Bash-CSP2101/workshop/week4 && ./foldercopier.sh;;
    "4")
        cd ~/Documents/Bash-CSP2101/workshop/week3 && ./savePassword.sh;;
    "5") 
        cd ~/Documents/Bash-CSP2101/workshop/week4 && ./read.sh;;
    "6")
        read -p "What is the first file name: " file1
        read -p "What is the second file name: " file2 
        read -p "What is the third file name: " file3
        files= "$file1, $file2, $file3" 
        cd ~/Documents/Bash-CSP2101/workshop/week4 && ./condit.sh $files;; 
    "7")
        cd ~/Documents/Bash-CSP2101/workshop/week5 && ./megafoldermaker.sh;;
    "8")
        cd ~/Documents/Bash-CSP2101/workshop/week5 && ./netdown.sh 

esac

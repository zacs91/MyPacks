#!/bin/bash 

if [ "$#" -ne 3 ]; then 
echo "There is not 3 entries, quitting program"
exit 1 
fi
 
 filcnt=0
 newestfile=""

 for i; do
 
    if [[ -f $i ]]; then
    (( filecnt++ ))
    echo "$i is a file"

        if [[ $filecnt < 1 ]]; then
        newestfile=$i
        else
            if [[ $i -nt $newestfile ]]; then
                newestfile=$i 
            fi 
        
        fi 
    else echo "$i is not a file"
    fi 

done
echo "File count is set to $filecnt"
echo "Arguments passed is set to $#"

if [[ $filecnt -eq $# ]]; then 
    echo "The newest file is $newestfile"
else    
    echo "Insfufficient files for comparison."
fi 

exit 0 

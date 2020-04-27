

rtdir=~/Documents/Bash-CSP2101
read -p 'Enter the name of the file you are looking for or parts: ' secfile

cd $rtdir
find -mindepth 1 -maxdepth 1 -type d | while read -r dir 
do 
cd "$dir"
    if [[ $(find -name $secfile\*) ]]; then
    i=$(find -name $secfile\*)
    echo -n "$dir"
    echo -n "$i"
    echo " contains: "
    cat $i
fi
cd $rtdir
done 

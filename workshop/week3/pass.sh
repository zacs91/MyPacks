read -p "Please enter a folder name: " Folder # assign user input to Folder variable 
mkdir $Folder # make the Folder 
cd $Folder # change to newly created Folder 

read -p "Please enter a secret Password: " Pass # assign password to pass variable 
echo $Pass > secret.txt  # put the password in a secret.txt file and create in Folder directory 

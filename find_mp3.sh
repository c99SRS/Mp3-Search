#!/bin/bash

echo "Finding your mp3 files ............"
echo " "
echo "Counting no of  mp3 files. Wait......"
sudo find /home/ -iname "*.mp3" -print  | wc -l
echo ""

sudo find /home/ -iname "*.mp3" -print       # it will search in home directory for all mp3 files
echo " "
echo -n "Would you like to group in one directory? Type [y/n] "
read response

# if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
#     echo "Hello  successful " 
# else
#     echo "Very bad " 
# fi


# case "$response" in ([yY] [eE] [ss] | [yY])
#      echo "Hello  successful " ;; 
#      *)
	
#      echo "Very bad " ;

# esac

case $response in [Yy][Ee][Ss]|[Yy]) 
      echo " Moving  your files............. "
      
      echo "Hello  successful " ;; *) 
    echo " very bad ." ;; 
esac
#!/bin/bash
#! Author - Smruti Ranjan
#! Date : 22/03/2017


echo "Finding your mp3 files ............"
echo " "
echo "Counting no of  mp3 files. Wait......"
sudo find /home/ -iname "*.mp3" -print  | wc -l
echo ""

sudo find /home/ -iname "*.mp3" -print       # it will search in home directory for all mp3 files
echo " "
echo " "
echo -n "Would you like to organize in one directory? Type [y/n] "
read response


case $response in [Yy][Ee][Ss]|[Yy]) 
      echo " Moving  your files............. "
      mkdir /home/smruti/MP3
     sudo find / -iname "*.mp3" -exec mv {} /home/smruti/MP3 \;
      echo "Hello  successful " ;; *) 
    echo " very bad . You Should organize  things ....... :-0 " ;; 
esac
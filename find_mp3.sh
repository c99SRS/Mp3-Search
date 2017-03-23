#!/bin/bash
#Created on 23-0-2017
#Author = Smruti Ranjan
#Version 1.0
#START


DIR = /home/smruti/MP3
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
      if [ ! -d $DIR ]
     then
        echo " directory " $DIR " does not exist. creating directory ........";
        mkdir  $DIR
        sudo find / -iname "*.mp3" -exec mv {} /home/smruti/MP3 \;
      else
        echo "directory " $DIR " exists. Copying files .........";
        sudo find / -iname "*.mp3" -exec mv {} /home/smruti/MP3 \;
      fi
     
      echo "Hello  successful " ;; *) 
    echo " very bad . You Should organize  things ....... :-0 " ;; 
esac


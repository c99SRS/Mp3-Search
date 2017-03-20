#!/bin/bash

echo "Finding your mp3 files ............"
echo " "
echo "Counting no of  mp3 files. Wait......"
sudo find /home/ -iname "*.mp3" -print  | wc -l


sudo find /home/ -iname "*.mp3" -print       # it will search in home directory for all mp3 files

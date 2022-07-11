#!/bin/bash

#*****Changeing Directory to Gitbase directory
cd /home/user/Git1
#*****changing writes & Permissions
chmod -R 777 /home/user/Git1
#*****Make directory to git repository
git init

#1. Add Function
#*****adding all files into Git
git add .

#2. List Function
#******Listing Local files into base directory
ls -l
#******Listing files and branches
git branch -a

#3. Commit Function
#****commiting on to Git hub account
DATE=$(date)
git commit -m "Changes Made on $DATE"
git push --set-upstream origin master
Gittest -e 'display notification "pushed to remote" with title "SUCESS"'

#4. Branch Function
#*****creating seperate staging area
sudo mkdir /home/user/Git2
#****Copying file into new directory
sudo cp -r /home/user/Git1 /home/user/Git2
#****creating new branch
git branch Git2

#5. Merge Function
#merging branch2 with Master branch
git merge Git2

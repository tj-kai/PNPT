#!/bin/bash

if [ "$1" == "" ]  
then
	echo "You forgot to mention file name which needs to be removed."
	echo "Syntax: ./03_git_remove_script.sh <file_name_here> <commit_msg_here_OPTIONAL>"
else
	if [ "$2" == "" ] 
	then
		tmp_commit_msg="Removing file $1"
	else
		tmp_commit_msg=$2
	fi
	
	echo "Executing - git rm $1"
	git rm $1
	
	echo ""
	echo "Executing - git commit -m \"$tmp_commit_msg \""
	git commit -m \""$tmp_commit_msg\"" 
	
	echo ""
	echo "Executing - git push origin main"
	git push origin main
	
	echo "Done..."
fi

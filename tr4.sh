#!/usr/bin/env bash

# Created By 	: Rami Yacov
# Practice No	: 30-11-2017 No-4
# purpose 	: check files in folder if ur the owner, if not make them.
# 

#Local Variables
files_in_folder=$(ls -l | wc -l)
file_owner_name=" "
file_name_2chg=" "

if [ $files_in_folder -eq 1 ]; then
	echo "the folder is empty"
	exit
else
	echo "Starting ..."
fi

for i in $(seq 2 $files_in_folder)
do
	# init params
	file_owner_name=$(ls -l | sed "$i!d" | awk '{print $3}') # fetching owner
	file_name_2chg=$(ls -l | sed "$i!d" | awk '{print $9}') # fetching file name

	if [ "$file_owner_name" == $USER ]; then
		echo "File: $file_name_2chg --Owner and User are the same"
	else
		echo -e "File: $file_name_2chg --Owner and User are NOT the same!\n--Updating $USER as the Owner of $file_name_2chg"

		chown $USER $file_name_2chg	# chg owner
		echo -e "Done.\n"
	fi
done

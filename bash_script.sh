#!/bin/bash
#
read -p "Enter path: " value1
cd $value1
if [ $? == 0 ]
	then
		read -p "Enter dir name: " value2
		if [ -d $value2 ]
			then
				read -p "Enter NEW name: " value3
				mv $value2 $value3
				if [ -d $value3 ]
					then 
						echo 'Complete'
				  else
					  echo 'Rename failed'
		  	fi
			else
				echo 'Folder doese not exist'
		fi
		else 
			echo 'Bad path!!'
			echo 'Chose another path'
fi

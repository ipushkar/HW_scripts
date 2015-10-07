#!/bin/bash
#
read -p "Enter path: " value1
cd $value1
if [ $? == 0 ]
	then
		read -p "Enter old dir name: " value2
#		cd $value2 
		if [ -d $value2 ]
		  then 
		    echo "Folder doese not exist"
				read -p "Enter NEW name: " value3
					
					then 
						echo 'Renam succes'
				  else
					  echo 'Rename failed'
		  	fi
			else
				echo 'Folder doese not exist'
		fi
		else 
			echo 'Bad path!!'
fi

#!/bin/bash
#
read -p "Enter path: " value1
cd $value1
if [ $? == 0 ]
	then
		read -p "Enter old folder name: " value2
			if [ -d $value2 ]
				then 
				echo "Folder exists, rename failed"
				else
					echo "Old folder doese not exists"
					read -p "Enter NEW folder name: " value3
						if [ -d $value3 ]
							then 
							echo 'Rename succes'
						 else
						echo 'Rename failed'
		  				fi
			
			fi
	else 
		echo 'Bad path!!'
fi

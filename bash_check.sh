#!/bin/bash
#
#read -p "Enter path: " value1
#cd $value1
#if [ $? == 0 ]
#	then
#		read -p "Enter old folder name: " value2
#			if [ -d $value2 ]
#				then 
#				echo "Folder exists, rename failed"
#				else
#					echo "<< Old folder doesn't exist >>"
#					read -p "Enter NEW folder name: " value3
#						if [ -d $value3 ]
#							then 
#							echo '<< Folder was renamed >>'
#						 else
#						echo "<< Folder wasn't renamed >>"
#		  				fi
#			
#			fi
#	else 
#		echo '<< Bad path!! >>'
#fi
##################################################################################################
# ver. 2 
#read -p "Enter path: " value1
cd $value1
if [ $? == 0 ]
	then
		if [ -d $value2 ]
			then 
			echo "Folder exists, rename failed"
		else
			echo "<< Old folder doesn't exist >>"
			if [ -d $value3 ]
				then 
					echo '<< Folder was renamed >>'
			else
				echo "<< Folder wasn't renamed >>"
		  	fi
			
		fi
	else 
		echo '<< Bad path!! >>'
fi


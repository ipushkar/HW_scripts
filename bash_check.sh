#!/bin/bash
#
value1=$1
value2=$2
value3=$3
#read -p "Enter path: " value1
if [ $value1 == 0]
	then echo "Set values"
else	
	cd $value1
	if [ $? == 0 ]
		then
		#	read -p "Enter old folder name: " value2
				if [ -d $value2 ]
					then 
					echo "<< Old folder exists, rename failed >>"
					else
						echo "<< Old folder doesn't exist >>"
						#read -p "Enter NEW folder name: " value3
							if [ -d $value3 ]
								then 
								echo '<< Rename succeeded >>'
							 else
							echo "<< Rename failed >>"
		  					fi
			
				fi
		else 
			echo '<< Bad path!! >>'
	fi
fi

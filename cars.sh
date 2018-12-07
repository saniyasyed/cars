#! /bin/bash
#cars.sh
#Saniya Syed
CONTINUE=1
while [ $CONTINUE -eq 1 ]
do
	echo "My Old Cars Inventory System"
	echo "----------------------------"
	echo "1. Enter a car"
	echo "2. List the cars"
	echo "3. Quit"
	read choice
	
	case $choice in
		"1" )
			echo "Enter the year: "
			read year
			echo "Enter the make: "
			read make
			echo "Enter the model: "
			read model
			new_car="$year+":"+$make+":"$model"
			echo "$year:$make:$model" >> My_old_cars
			;;
		"2" )
			sort My_old_cars
			;;
		"3" )
			echo "Goodbye."
			CONTINUE=0
			;;
	esac
done

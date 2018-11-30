#! /bin/bash
#cars.sh
#Saniya Syed

echo "My cars:"
echo "-----------------"
echo My_old_cars
loop=True
while loop
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
			new_car = "$year+":"+$make+":"$model"
			newcar>>"My_old_cars"
			;;
		"2" )
			My_old_cars = $ sort My_old_cars
			echo My_old_cars
			;;
		"3" )
			echo "Goodbye."
			loop=False
			;;
	esac
done

#!/bin/bash

#set the mininum number
number=50

#Function for wrong input
function wrong(){
read -p "Do you want to continue with another number y/n " input
if [ $input == y ] || [ $input == yes ]
then
echo
root
elif [ $input == n ] || [ $input == yes ]
then
echo "Thank you for playing"
exit
else
echo "wrong input. Cant read data"
wrong
fi
}

#Function for calculate the root of the number
function root(){

read -p "Please enter a number less than 50: " num
while [ $num -le 50 ]
do
	rootsum=$(($num*$num))
	echo "The root of $num is $rootsum"
	echo
sleep 1
wrong
done

}

#Call the functions
root
wrong

#Set a loop for input greater than 50 
while [ $num -gt 50 ]
do
	echo "The number you enter is greater than 50. Please enter a number less than 50"
echo
root
done


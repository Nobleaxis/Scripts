#!/bin/bash

# ======This scripts was written by Noble. A linux/AWS system engineer. =======

echo "For this script to work correctly, I have to install 'pv' on your system"

echo "Do you want noble to install pv? This will take less than 2 minute"

	read INPUT

 if [ $INPUT == 'yes' ] || [ $INPUT == 'Yes' ];

	then

sudo yum install -y epel-release > pvfile && sudo yum install -y pv > pvfile

	else
echo "Sorry I can't continue without the package. Thank you. Have a nice day"
exit

		fi
   clear
		echo "Hey you are welcome. My name is Noble. Can i know your name please" | pv -qL 7
read NAME

echo
   	 echo "Welcome once again $NAME. Lets get to know ourselves better.
I come from Ghana, where do you also come from." | pv -qL 7
	echo
read COUNTRY
	echo
sleep 2
	if [ $COUNTRY == Ghana ] || [ $COUNTRY == ghana ]; 
then 
      echo "oh wow that great" | pv -qL 7
	else
echo "wow $COUNTRY is such a nice country" | pv -qL 7

fi
echo
	sleep 2
echo "so how do you find linux, easy or complicated" | pv -qL 7

     read ANSWER
	echo
if [ $ANSWER == easy ]; then
     echo "then i think you are a pro" | pv -qL 7
		 else
     echo "Actually it is but all you need is to understand it" | pv -qL 7
fi

sleep 2
	echo "so $NAME, nice meeting you. Have a bliss day" | pv -qL 7

	sleep 2
echo
	echo "$NAME below are some of the few helps i can offer you" | pv -qL 7
echo
	sleep 2
echo "please choose one option" | pv -qL 7
	echo
sleep 1
	echo "a = The current date and time" | pv -qL 7
	echo "b = The network interface information" | pv -qL 7
	echo "c = files in your home directory" | pv -qL 7
	echo "d = To exit me" | pv -qL 7

read option
		sleep 2
    case $option in 

a) date;;
b) ifconfig;;
c) ls /home/$USER;;
d) exit;;

		esac
#====================== THANK YOU ===============================

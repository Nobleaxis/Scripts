#!/bin/bash

# ======This scripts was written by Noble. A linux/AWS system engineer.This script is ============
# ======to welcome a new team member on board.It is an interact section with the author.=========
# ======              Sit back and enjoy                    =======
clear

echo -e "\e[1;31m For this script to work correctly, I have to install 'pv' command on your system \e[0m"
echo "Dont worry, you will be given a chance to remove it from your system if you dont want it to persist"

echo "Do you want noble to install pv? This will take less than 60 seconds"

	read INPUT

 if [ $INPUT == 'yes' ] || [ $INPUT == 'Yes' ];

	then

sudo yum install -y epel-release > pvfile && sudo yum install -y pv > pv.log

	else
echo "Sorry I can't continue without the package. Thank you. Have a nice day"
exit

		fi
   clear
		echo -e "\e[1;31m Hey you are welcome to Dellatech Global LLC. My name is Noble the senior Linux System Admin. Can I know your name please \e[0m" | pv -qL 7
echo
read NAME

echo
   	 echo -e "\e[1;31m Welcome to the team $NAME. Lets get to know ourselves more. I come from Ghana, what's your country of origin. \e[0m" | pv -qL 7
	echo
read COUNTRY
	echo
sleep 1
	if [ $COUNTRY == Ghana ] || [ $COUNTRY == ghana ]; 
then 
      echo -e "\e[1;31m Oh wow that great. Akwaaba \e[0m" | pv -qL 7
	else
echo -e "\e[1;31m Wow $COUNTRY is such a nice country. Its actually on my list to go for a vacation over there \e[0m" | pv -qL 7

fi

	sleep 2
echo -e "\e[1;31m So how do you find linux and it job roles. Easy or Complicated \e[0m" | pv -qL 7
echo
     read ANSWER
	echo
if [ $ANSWER == easy ] || [ $ANSWER == Easy ]; then
     echo -e "\e[1;31m Then i think you are a pro. Lol \e[0m" | pv -qL 7
		 else
     echo -e "\e[1;31m Actually it is but all you need is to understand how it works \e[0m" | pv -qL 7
fi

sleep 2
	echo -e "\e[1;31m So $NAME, nice meeting you. Have a bliss day \e[0m" | pv -qL 7
	echo -e "\e[1;31m Do you have any question to ask me. \e[0m" | pv -qL 7
echo
read QUESTION
		if [ $QUESTION == no ] || [ $QUESTION == No ]; then
	echo -e "\e[1;31m Okay \e[0m" | pv -qL 7
		else
	echo -e "\e[1;31m Sorry $NAME I will answer your question when i see in person. \e[0m" | pv -qL 7
		fi
	sleep 2
echo
	echo -e "\e[1;31m $NAME below are some of the few helps i can offer you \e[0m" | pv -qL 7

	sleep 1
echo -e "\e[1;31m Please choose one option \e[0m" | pv -qL 7
	echo
sleep 1
	echo -e "\e[1;31m a = The current date and time \e[0m" | pv -qL 7
	echo -e "\e[1;31m b = The network interface information \e[0m" | pv -qL 7
	echo -e "\e[1;31m c = files in your home directory \e[0m" | pv -qL 7
	echo -e "\e[1;31m d = To exit me \e[0m" | pv -qL 7

read option
		sleep 2
    case $option in 

a) date;;
b) ifconfig;;
c) ls /home/$USER;;
d) exit;;

		esac
#====================== THANK YOU ===============================

#!/bin/bash

trinken='Bier und Wasser'

echo $trinken

#------------------------

echo '$0=' $0
echo '$1=' $1
echo '$#=' $#
echo '$?=' $?

#--------------------------
echo $(date)

string_1='BMW'
string_2='Autobahn'
string="${string_2} ist ein schöner platz für ein ${string_1}"

echo "Der $string_1 ist zuhause auf der $string_2"
echo "$string"

#------------------------------

read -p "Bitte geben Sie eine Automarke ein: " marke

if [[ $marke = "BMW" | $marke = "VW" ]]; then
	echo "$marke ist das beste Auto"
elif [[ $marke = "VW" ]]; then
	echo "$marke ist ganz Okay"
else
	echo "Ihre Eingabe: $marke ist ein kack Auto"
fi

#-----------------------------

echo "$marke"
read -p "Bitte geben Sie eine Marke ein" marke2
while [[ $marke2 = "BMW" ]]; do
	echo " $marke2 ist das Beste Auto"
	read -p "Marke:" marke2
done
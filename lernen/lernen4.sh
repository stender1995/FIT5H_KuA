#!/bin/bash

counter=1

read -p "Bitte geben sie die Zahl $counter ein: " zahl1

if [[ `echo zahl1 | grep [[:digit:]]` ]]; then
	((counter++))
	echo "Die erste Zahl lautet: $zahl1"
else 
	echo "Die Eingabe $zahl1 ist keine Zahl!!!"
fi
read -p "Bitte geben eine Zahl $counter ein oder die Eingabe exit zum beenden: " eingabe

ergebniss=$zahl1

read -p "Variante: " variante

if [[ $variante = "+" ]]; then

if [[ `echo $eingabe | grep [[:digit:]]` ]]; then

while [[ $eingabe -ne "exit" ]]; do
	ergebniss=$((eingabe+ergebniss))
	
	echo "Bisher wurden $counter Zahlen eingegeben. Das Zwischenergebniss lautet: $ergebniss" 

	read -p "Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit: " eingabe 
	((counter++))

done

else 
	echo "Die Eingabe: $eingabe ist keine Zahl!!!"

fi

fi
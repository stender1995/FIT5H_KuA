#!/bin/bash

if [[ -e $1 ]]; then
	echo "Datei $1 ist vorhanden"
else 
	echo "Datei ist nicht vorhanden!!!"



read -p "Dateiname: " datei 

if [[ -e $datei || $datei = "q" ]]; then
	echo "Datei '$datei' ist vorhanden oder q wurde gedrückt."
else
	while [[ ! -e $datei ]]; do
			echo "Datei '$datei' ist nicht vorhanden!!!"
			read -p "Dateiname: " datei

			if [[ -e $datei || $datei = "q" ]]; then
					echo "Datei $datei ist vorhanden oder q wurde gedrückt"
					break
				fi	
	done
fi

fi

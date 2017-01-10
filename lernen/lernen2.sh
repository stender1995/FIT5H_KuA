#!/bin/bash


read -p "Dateiname: " datei 

if [[ -e $datei ]]; then
	echo "Datei '$datei' ist vorhanden."
else
	echo "Datei '$datei' ist nicht vorhanden!!!"
fi
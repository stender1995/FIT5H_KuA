#!/bin/bash 
topic=$1 

datum=`date +%d.%m.%Y`

ver=/home/$(whoami)/KuA/lernen/$topic

echo $ver

if [[ -d $ver ]]; then
	echo "Der Pfad ist vorhanden"
	read -p "Notiz: " notiz 
	printf " \n $datum \n $notiz " >> $ver/notiz.txt
else
	echo "Der Pfad ist nicht vorhanden"
fi



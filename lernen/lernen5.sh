#!/bin/bash

read -p "Skript öffnen: " topic

ver=/home/$(whoami)/KuA/lernen/$topic

read -p "Notiz: " notiz 
datum=$(date)

echo $ver

if [[ -d $ver ]]; then
	echo "Verzeichnis gefunden."
	echo $notiz >> $ver/notiz.txt
	echo "Notiz wurde eingetragen."
else
	mkdir "test"
	cd "test"
		echo "Verzeichnis nicht gefunden!!! Wurde erstellt"
		echo "$notiz+$datum" >> $ver/notiz.txt
		echo "Notiz wurde eingetragen."
fi

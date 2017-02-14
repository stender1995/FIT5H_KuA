#!/bin/bash

dates=$(date +"%d.%m.%Y %H:%M ") 
wer=$(whoami)
verzeichnis=$(pwd)

read -p "Ordner suchen/erstellen:" topic
read -p "Text datei suchen/erstellen:" text

if ! [[ -e "/home/$wer/KuA/$topic" ]]; then
	mkdir /home/$wer/KuA/$topic
		echo "Ordner/Datei wurde erstellt und wurde geöffnet."
else 
	cd /home/$wer/KuA/$topic
		echo "Ordner/Datei ist schon vorhanden und ist geöffnet."
fi

read -p "Notiz:" notiz

echo  "$verzeichnis $notiz" "$dates"  >> /home/$wer/KuA/$topic/$text

	read -p "Ihre Zahl 1: "  zahl1
	read -p "Ihre Zahl 2: "  zahl2	

	if [[ `echo "$zahl1" | grep [[:digit:]]` && `echo "$zahl2" | grep [[:digit:]]` ]]; then
			rechnung="$zahl1 + $zahl2"
			rechnung2=$((zahl1 + zahl2))
			echo "Rechnung lautet: $rechnung "

	read -p "Weitere Eingabe: " wert

		if [[ $wert = "exit" ]]; then
			echo "Ergebniss lautet: $rechnung2. Das Programm wurde beendet"
		else 
			echo "Falsches Wort eingegeben"
		fi
	else 
		echo "Nur Zahlen eingeben!!! Programm wird beendet"
	fi




	#echo "Ergebniss: $rechnung2"

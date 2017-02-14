#!/bin/bash

read -p "Geben sie ihren Text ein:" var_name 

echo "Die Eingabe lautete: $var_name" 

if [[ $var_name = "q" ]] 
	then 
		echo "Ist ein prima q"
	elif [[ $var_name = "m" ]]
		then 
			echo "Jo, ein m"
		else 
			echo "irgentwas anderes"
fi 

#!/bin/bash

trinken='Whiskey und Zigarren'

echo $trinken

echo $0
echo $1

echo $(date)

remove='rm test.txt'
$remove
echo $?
string_1=Heia 
string_2=Popeia 
string="${string_1} ${string_2} was raschelt im Stroh?"
echo "$string_1 $string_2 aber im Heu"
echo $string 

echo $?

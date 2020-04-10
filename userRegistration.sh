#!/bin/bash -x

#TAKING INPUTS
read -p "Enter First Name :  " firstName
read -p "Enter Last Name : " lastName

function checkName(){
	patternName="^([A-Z][a-z]{1,10})$"
	if [[ $1 =~ $patternName ]] && [[ $2 =~ $patternName ]]
	then
		echo "Valid is First and Last Name"
	else
		echo "Invalid is First and Last Name "
	fi
}

checkName $firstName $lastName

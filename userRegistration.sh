#!/bin/bash -x

#TAKING INPUTS
read -p "Enter First Name :  " firstName
read -p "Enter Last Name : " lastName
read -p "Enter Email Id : " email

#FUNCTION TO VALIDATE NAME
function checkName(){
	patternName="^([A-Z][a-z]{1,10})$"
	if [[ $firstName =~ $patternName ]] && [[ $lastName =~ $patternName ]]
	then
		echo "Valid is First and Last Name"
	else
		echo "Invalid is First and Last Name"
	fi
}

#FUNCTION TO VALIDATE EMAIL ID
function checkEmail(){
	patternEmail="^abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}$"
	if [[ $email =~ $patternEmai ]]
	then
		echo "Valid is Email Id"
	else
		echo "Invalid is Email Id"
	fi
}

checkName $firstName $lastName
checkEmail $email

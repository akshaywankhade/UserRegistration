#!/bin/bash -x

#TAKING INPUTS
read -p "Enter First Name :  " firstName
read -p "Enter Last Name : " lastName
read -p "Enter Email Id : " email
read -p "Enter Mobile Number : " mobileNumber
read -p "Enter Password : " password
 
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
#FUNCTION TO VALIDATE MOBILE NUMBER
function checkMobileNumber(){
	patternMobileNumber="^([0-9]{2}[ ]{1}[0-9]{10})$"
	if [[ $mobileNumber =~ $patternMobileNumber ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
	fi
}
#FUNCTION TO VALIDATE PASSWORD
function checkPassword(){
	patternPassword="^(.*[A-Z])+(\w){7,}$"
	if [[ $1 =~ $patternPassword ]]
	then
		echo "Valid Password"
	else
		echo "Invalid Password"
	fi
}

checkName $firstName $lastName
checkEmail $email
checkMobileNumber "$mobileNumber"
checkPassword "$password"

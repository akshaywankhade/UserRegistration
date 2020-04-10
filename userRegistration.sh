#!/bin/bash -x

#TAKING INPUT
read -p "Enter First Name :  " firstName

patternFirstName="^([A-Z][a-z]{1,10})$"

if [[ $firstName =~ $patternFirstName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi




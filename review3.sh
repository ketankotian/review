#!/bin/bash -x
shopt -s extglob

echo "Welcome ! "

randomNumber=$((RANDOM%4+1))

function checkMobileNumber () {
 mobilePattern="^[0-9]{10}$"
 if [[ $mobileNumber =~ $mobilePattern ]]
 then
 echo "Your Given Mobile Number is valid "
 else
 echo "Invalid Mobile Number "
fi
}

function checkZipCode () {
 zipPattern="^[0-9]{6}$"
 if [[ $zipCode =~ $zipPattern ]]
 then
 echo "Your Given Zip Code is Valid "
 else
 echo "Invalid Zip Code "
fi
}

function checkaadharCardNumber () {
 aadharCardPattern="^[0-9]{12}$"
 if [[ $aadharNumber =~ $aadharCardPattern ]]
 then
 echo "Your Given Aadhar Card Number is valid "
 else
 echo "Invalid Aadhar Card Number "
fi
}

function checkName () {
 namePattern="^[A-Za-z]{3,}$"
 if [[ $name =~ $namePattern ]]
 then
 echo "Your Given Name is valid "
 else
 echo "Invalid Name "
fi
}


 case $randomNumber in
	1)
	read -p "Enter your Mobile Number : " mobileNumber
	checkMobileNumber
	echo "Thank You ! "
;;

	2)
	 read -p "Enter your Zip Code : " zipCode
	 checkZipCode
	 echo "Thank You ! "
;;

	3)
	 read -p "Enter your Aadhar Card Number : " aadharNumber
	 checkaadharCardNumber
	 echo "Thank You ! "
;;

	4)
	 read -p "Enter your name : " name
	 checkName
         echo "Thank You ! "
;;
	*)
	echo "Try Again "
;;
	esac


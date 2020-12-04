#!/bin/bash -x

read -p "Enter your First Name : " fName
read -p "Enter your Last  Name : " lName
read -p "Enter your Email-id   : " email
read -p "Enter your Password   : " pass
read -p "Enter your Mobile No  : " mobile

function checkFName () {
  if [ -z "$fName" ]
then
 echo "First Name can't be Empty "
fi
}
checkFName

function checkLName () {
  if [ -z "$lName" ]
then
 echo "Last Name can't be Empty "
fi
}
checkLName

function checkEmail () {
  if [ -z "$email" ]
then
 echo "Email id can't be Empty "
fi
}
checkEmail

function checkPassword () {
  if [ -z "$pass" ]
then
 echo "Password can't be Empty "
fi
}
checkPassword

function checkMobile () {
  if [ -z "$mobile" ]
then
 echo "Mobile Number can't be Empty  "
fi
}
checkMobile

data[0]=$fName
data[1]=$lName
data[2]=$email
data[3]=$pass
data[4]=$mobile

for ((i=0; i<${#data[@]}; i++ ))
do
echo "Details :  ${data[i]}"
done

power=$((2**${#data[@]}))
echo "size of array : ${#data[@]}"
echo "Power of 2  : $power "

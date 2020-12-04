#!/bin/bash -x

randomNumber=$((RANDOM%5+5))

function checkNumber () {
	if [ $((randomNumber%2)) -eq 0 ]
then
  echo "Number => $randomNumber is Even Number ! "
else
  echo "Number => $randomNumber is Odd Number !"
fi
}
checkNumber

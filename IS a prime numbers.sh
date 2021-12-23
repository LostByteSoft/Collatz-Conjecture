#!/bin/bash
start=$SECONDS
echo --- Start of bash ---
echo "LostbyteSoft"
echo "Version 2021-12-22"
echo
echo "Enter a number to verify if it is an prime number!"
echo -e "Enter Number : \c"
read n

echo --- Calculations started ---
sleep 0.25

num=$n
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo
    echo "$num is not a prime number."
    echo
    echo --- Calculations done ---
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name
	exit
  fi
done
echo
echo "$num is a prime number."

echo
echo --- Calculations done ---
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---

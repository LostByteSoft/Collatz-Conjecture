#!/bin/bash
start=$SECONDS
echo --- Start of bash ---
echo "LostbyteSoft"
echo "Version 2021-12-22"
echo
echo "Enter a number to calculate multiples of this number ? (Numbers only)"
read a

x=$a
b=$a

echo "(Debug) Values of A $a B $b and X $x"

echo --- Calculations started ---
sleep 0.25

# 17 numbers maximum
while [ $x -le 9999999999999999 ]
do
  echo "multiples $x"
  x=$((x * b))
done

echo --- Calculations done ---
	echo Finish... This script take $(( SECONDS - start )) seconds to complete.
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name

echo --- End of bash ---

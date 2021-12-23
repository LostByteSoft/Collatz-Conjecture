#!/bin/bash
start=$SECONDS
echo --- Start of bash ---
echo "LostbyteSoft"
echo "Version 2021-12-22"
echo
echo --- ---

echo "100 takes ~2 sec"
echo "2000 takes ~5 sec"
echo "10000 takes ~1:40 min"
echo
echo "How many number after the . do you want ?"
read n

echo --- Calculations started ---

echo "scale=$n; 4*a(1)" | bc -l

echo --- Calculations done ---

	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---

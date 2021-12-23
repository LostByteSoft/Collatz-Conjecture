#!/bin/bash
start=$SECONDS
echo --- Start of bash ---
echo "LostbyteSoft"
echo "Version 2021-12-22"
echo

echo "enter a SMALL number. Ex: want between 11 and 200) enter 11 here"
read m 

echo "enter a BIG number. Ex: want between 11 and 200) enter 200 here"
read n

echo --- Calculations started ---

for a in $(seq $m $n)
do
    k=0
    for i in $(seq 2 $(expr $a - 1))
    do 
        if [ $(expr $a % $i) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo $a
    fi
done

echo --- Calculations done ---

	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---

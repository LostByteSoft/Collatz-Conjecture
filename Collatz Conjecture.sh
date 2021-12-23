#!/bin/bash
start=$SECONDS
printf '\033[8;50;75t'		# will resize the window
echo --- Start of bash ---
echo "LostbyteSoft"
echo "Version 2021-12-22"
echo
echo "Version 2021-12-23"
echo "Write data in file stats.txt"
echo


##Parts of code came from here.
##https://deepbsd.github.io/bash/2018/08/11/The_Collatz_Conjecture.html

  	#echo 68719476736 is a multiple of 2 4 8 16... 1024 ... 8192... etc
  	# bash doesn't like BIG numbers. 17 numbers maximum.
  	#posnum=4294967296
  	
echo " 17 numbers maximum. "
echo "Enter a number to calculate the Collatz Conjecture ? (Numbers only)"
read posnum

echo --- Calculations started ---
sleep 0.25

  	#posnum=$RANDOM
  	
  	#27 specail number
  	#9663 special number

  	#Collatz part of the solution ! This is not a proof !
  	#There are no number to go infinite because when you fell on 16 multiple
  	#you go directly to 1 (1024/2=512/2=256/2=128/2=64/2=32/2=16/2=8/2=4/2=2/2=1).
  	#They're all divide by 2.
  	#There are INFINITE multiples of 16 (1024) so you always return to 1 directly.
	#There are INFINITE multiples of 2 so you always return to 1 eventually.

  	# There are NO solution at Collatz.
  	# And no proof either...
  	
  	counter=0   # counter
  	while [[ ${posnum} -ne 1 ]]; do
  	echo Number is : $posnum Counter is : $counter
  	echo $posnum >> stats.txt
  	[ $((posnum % 2)) -eq 0 ] && ((posnum=posnum/2)) || ((posnum=1+posnum*3))
  	((counter+=1))
  	done
  	
  	echo Number is : 1 Counter is : $counter
echo --- Calculations done ---
	echo Finish... This script take $(( SECONDS - start )) seconds to complete.
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name

echo --- End of bash ---
	
	#  As is customary and in compliance with current global and
	#interplanetary regulations, the author of these pages disclaims
	#all liability for the consequences of the advice given here,
	#in particular in the event of partial or total destruction of
	#the material, Loss of rights to the manufacturer warranty,
	#electrocution, drowning, divorce, civil war, the effects of
	#radiation due to atomic fission, unexpected tax recalls or
	#encounters with extraterrestrial beings elsewhere.
	#LostByteSoft no copyright or copyleft we are in the center.

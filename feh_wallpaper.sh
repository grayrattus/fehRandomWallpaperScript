#!/bin/bash -
cd $HOME/wallpapers/
touch wallpapers.txt

ls *.jpg > wallpapers.txt

I=1				# inicjujemy zmienną mówiącą o numerze elementu

for WERS in $(cat wallpapers.txt)
do
	tablica[$I]=$WERS
	echo ${tablica[$I]}
	I=`expr $I + 1`
done
I=`expr $I - 1`
echo $I

losowanie=$(( ( RANDOM % $I )  + 1 ))
echo $losowanie



while [ 1 ]
do
losowanie=$(( ( RANDOM % $I )  + 1 ))
echo $losowanie
feh --bg-scale ./${tablica[$losowanie]}
sleep 15s
done


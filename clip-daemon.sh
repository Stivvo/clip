#!/bin/bash

ME=$(whoami)
F="/home/${ME}/clip/" #path to the cloned repo

while [ 0 -eq 0 ]
do
    echo $(xclip -o -selection c) > "${F}temp"
	N=$(cat "${F}temp" | wc -l)
    let N++
    #let N++

	A="$(cat "${F}active")"

    CMP1=$(cat "${F}temp")
    CMP2=$(tail -n "$N" "${F}${A}")
    #echo "fa: ${F}${A}, N: $N"
    #echo "temp (xclip -o): ${CMP1}"
    #echo "tail of *.clip: ${CMP2}"

	if [ "$CMP1" != "$CMP2" ]
	then
		cat "${F}temp" "${F}nwline"
		cat "${F}temp" "${F}nwline" >> "${F}${A}"
	fi
sleep 0.8
done

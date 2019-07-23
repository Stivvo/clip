#!/bin/bash
F=~/clip/ #path to the cloned repo

while [ 0 -eq 0 ]
do
	xclip -o -selection c > "${F}temp"
	N=$(cat "${F}temp" | wc -l)
	let N++

	A="$(cat "${F}active")"

	if [ "$(cat "${F}temp")" != "$(tail -n "$N" "${F}${A}")" ]
	then
		cat "${F}temp" "${F}nwline" "${F}nwline"
		cat "${F}temp" "${F}nwline" >> "${F}${A}"
	fi
sleep 0.8
done

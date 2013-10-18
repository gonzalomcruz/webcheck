#!/bin/bash

while true
do
	sleep 30

	curl http://webaddresshere > web_cmp

	lc=$(diff web web_cmp | wc -l)

	if [ $lc -gt 0 ]
	then
		while true
		do
			beep
			sleep 1
		done
	fi		
done

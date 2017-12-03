#!/usr/bin/env bash

# Created By 	: Rami Yacov
# Practice No	: 30-11-2017 No-3 (a+b)
# read 2 params 1-sleep time 2-command to run
# e.g. 5 "ls -l"

var1=$1
var2=$2

if [ -z $var1 ] && [ -z $var2 ]; then
	echo "syntax: command [sec in number] [command to run]"
	exit
fi

while [ $var1 -ne 0 ]
do
	sleep 1; echo $var1
	let $((var1--))
done
"$var2"

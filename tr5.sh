#!/usr/bin/env bash

# Created By 	: Rami Yacov
# Practice No	: 30-11-2017 No-5
# purpose 	: check param if it exist / file / folder
#

var1=$1

if [ -z $var1 ]; then
	echo "Syntax: [EXISTING fie or folder]"
else
	((test -e $var1) && (test -f $var1 && cat $var1) || (test -d $var1 && ls $var)) || echo "Unknow File"
fi

#!/bin/bash

echo
while [ -n "$1"]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) tmp = "$2"
		echo "Found the -b option, with parameter value $tmp"
		shift ;;
		-c) echo "Found the -c option"  ;;
		--) shift
		break ;;
		*) echo  "$1 is not an option" ;;
	esac
	shift
done

count=1
for para in $@
do
	echo "Parameter  #$count: $para"
	count=$[ $count + 1 ]
done


#!/bin/bash

usage() {
	echo "Usage: $0 [-i <input>] [-f <file>]"
	exit 1
}

while getopts ":i:f:" opt; do
	case $opt in
		i) input="$OPTARG";;
		f) file="$OPTARG";;
		\?) echo "Invalid option: -$OPTARG"
			usage;;
		:) echo "Option -$OPTARG requires an argument."
            		usage;;
	esac
done

if [ -z "$input" ] && [ -z "$file" ]; then
    echo "Please provide either direct input or a file as an argument"
    usage
fi


if [ -n "$input" ]; then
	git log -S"$input" --all --full-history -p | grep -E "^\+\+\+|^-.*$input"
elif [ -n "$file" ]; then
    while IFS= read -r line; do
	    echo "search: $line"
	    echo
	    echo
	git log -S"$line" --all --full-history -p | grep -E "^\+\+\+|^-.*$line"
    done < "$file"
fi

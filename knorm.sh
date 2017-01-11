#!/bin/bash
# Example usage of knormalize.pl

if [ "$1" == "" ] || [ ! -f "$1" ]; then
	echo "Usage: $0 <filename>"
	exit;
fi

convert $1 -depth 8 -format "%c" histogram:info:- > /tmp/knorm.hist

KNORM=`cat /tmp/knorm.hist|./knormalize.pl`
BLACK=${KNORM%,*}
WHITE=${KNORM#*,}

convert -strip -level ${BLACK}%,${WHITE}% $1 $1.knormed.jpg

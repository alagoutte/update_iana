#!/bin/sh

cd assignments
while read url;
	do curl -O "$url" ;
done < "$1"

git commit -a -m "Update IANA assignements ($(date +"%d %m %Y"))"

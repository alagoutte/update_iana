#!/bin/sh

cd assignments
while read url;
	do curl -O "$url" ;
done < "$1"

$comment = "Update IANA $(date +"%m_%d_%Y")"
echo $comment;

git commit -a -m "Update IANA"

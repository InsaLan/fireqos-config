#!/bin/bash
case $1 in
	install) ;;
	push_cfg) ;;
	*) 	echo "Valid usage is '$0 <install|push_cfg>'"
		exit 1;;
esac
while read line; do
	ip=`sed 's/.*=//' <<< $line`
	./$1.sh $ip &
done < vpn_list
wait

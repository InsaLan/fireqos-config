#!/bin/bash
case $1 in
	install) ;;
	push_cfg) ;;
	*) 	echo "Valid usage is '$0 <install|push_cfg>'"
		exit 1;;
esac
install push_cfg
while read line; do
	ip=`sed 's/.*=//' <<< $line`
	./$cmd.sh $ip &
done < vpn_list
wait

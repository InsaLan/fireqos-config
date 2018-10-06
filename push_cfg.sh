#!/bin/bash
[ "$1" = "" ] && read -p 'push localy (run with '"$0"'  <[user@]hostname>)? [y/N]' && [ "$REPLY" != "y" ] && exit

[ "$1" = "" ] && PREFIX="" || PREFIX="ssh $1"
[ "$1" = "" ] && CP="cp" || CP="scp"
[ "$1" = "" ] && DEST="" || DEST="$1:"
[ "$1" = "" ] && CFG="fireqos_head.conf" || CFG="fireqos.conf"

$CP `sed 's#/[^/]*$#/#' <<< $0`$CFG $DEST/etc/firehol/fireqos.conf
$PREFIX fireqos start

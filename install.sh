#!/bin/bash
[ "$1" = "" ] && read -p 'install localy (run with '"$0"'  <[user@]hostname>)? [y/N]' && [ "$REPLY" != "y" ] && exit

[ "$1" = "" ] && PREFIX="" || PREFIX="ssh $1"
$PREFIX apt -y install firehol

#!/bin/sh

serverip=$(ip -br a s tun0 | awk '{ print $3 }' | rev | cut -c4- | rev)

if [ "$serverip" == "" ]; then
	echo "VPN: Down"
else
	echo "VPN: ${serverip}"
fi

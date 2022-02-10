#!/bin/sh

serverip=$(ip -br a s tun0 | awk '{ print $3 }' | rev | cut -c4- | rev)
wireguardip=$(ip -br a s wg0 | awk '{ print $3 }' | rev | cut -c4- | rev)

if [ "$serverip" == "" ]; then
    if [ "$wireguardip" == "" ]; then
		echo "VPN: Down"
	else
		echo "VPN - Wireguard: ${wireguardip}"
	fi
else
	echo "VPN - OpenVPN: ${serverip}"
fi

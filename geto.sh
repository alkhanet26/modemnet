#!/bin/bash
# This Script by Alkhanet (http://github.com/alkhanet26)


{
pkg=$(opkg list-installed | grep -o screen)
echo -e "Checking Supporting Packages"

if [ $pkg = "screen" ]; then
	echo "Downloading Binaries"
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/lednet" -O /sbin/lednet && chmod +x /sbin/lednet
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/ledon" -O /sbin/ledon && chmod +x /sbin/ledon
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/modemnet" -O /sbin/modemnet && chmod +x /sbin/modemnet
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/modemcek" -O /sbin/modemcek && chmod +x /sbin/modemcek	
 	sleep 2
	echo "Successfully Downloaded"
	sleep 5
	clear
	bash --login
else
	echo "Downloading Packages"
	opkg update && opkg install screen httping
	sleep 2
	clear
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/lednet" -O /sbin/lednet && chmod +x /sbin/lednet
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/ledon" -O /sbin/ledon && chmod +x /sbin/ledon
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/modemnet" -O /sbin/modemnet && chmod +x /sbin/modemnet
	wget -q --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/modemcek" -O /sbin/modemcek && chmod +x /sbin/modemcek
	sleep 2
	echo "Successfully Downloaded"
	sleep 5
	clear
	bash --login
fi
}

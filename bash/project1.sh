#!/bin/bash

# Uses Netcat to check if a secure connection to google can be made, if not then the network adapter/dhcp is reset
# Uses SUDO, therefore an admin password must be provided in order to reset the adapter
# Thanks to linuxfordevices.com/tutorials & baeldung.com/linux for the tutorials!

RED_FONT=`tput setaf 1`
RESET_FONT=`tput sgr0`

if nc -v -w 2 google.com 443; then
    echo "Connected to the net!"
else
    read  -p "${RED_FONT}Connection failed, resetting the network adapter in 5 seconds.${RESET_FONT} " -t 5
    sudo dhclient -r
    sudo dhclient 
fi
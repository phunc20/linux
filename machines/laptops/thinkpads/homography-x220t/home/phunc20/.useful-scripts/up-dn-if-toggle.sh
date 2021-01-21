#!/bin/bash

#interface=`ip -br a | cut -f 1 -d " " | grep "wlp\|wlan\|enp\|eth" | dmenu -l 10`
#interface_N_status=`ip -br a | awk '{print $1" "$2}' | grep "wlp\|wlan\|enp\|eth" | dmenu -l 10`
## array (N.B. the parentheses)
interface_N_status=(`ip -br a | awk '{print $1" "$2}' | grep "wlp\|wlan\|enp\|eth" | dmenu -l 10`)

## Debugging
#echo "if = ${interface_N_status[0]}, status = ${interface_N_status[1]}"
#echo "if = ${interface_N_status[0]}"
#echo "status = ${interface_N_status[1]}"

in_common="sudo ip link set ${interface_N_status[0]}"
if [ "${interface_N_status[1]}" = "DOWN" ]; then
    command="${in_common} up"
else
    command="${in_common} down"
fi
#echo "command = $command"
eval $command
sudo dhcpcd ${interface_N_status[0]}
ip -br a | grep "${interface_N_status[0]}"

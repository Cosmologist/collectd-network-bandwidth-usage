#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-`hostname -f`}"
INTERVAL="${COLLECTD_INTERVAL:-60}"

while sleep "$INTERVAL"; do
    RX=`cat /sys/class/net/$1/statistics/rx_bytes`
    TX=`cat /sys/class/net/$1/statistics/tx_bytes`
    
    echo "PUTVAL $HOSTNAME/network-bandwidth-usage/if_octets interval=$INTERVAL N:$RX:$TX"
done

#!/bin/bash
ifconfig eth0 0.0.0.0 up
ifconfig eth0 promisc
tcpdump -i eth0 -C 1000 -w /mnt/external/$(date '+%Y%m%d%H%M%S').pcap

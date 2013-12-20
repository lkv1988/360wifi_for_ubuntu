#!/bin/bash

ifconfig eth0 0.0.0.0 promisc #没有这句，手机能上，主机上不了网了又
brctl addbr br0
brctl addif br0 eth0
hostapd hostapd.conf -B
brctl show
ifconfig br0 up
dhclient br0

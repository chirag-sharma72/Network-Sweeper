#!/bin/bash

# This tool sweeps a Class A network and lists out the hosts active in that network. 

# checking if the input has been given
if [ "$1" == "" ]
then
echo "You forgot the ip address!"
echo "Syntax: ./ipsweep\3 a.b.c"

else
# to check active hosts in the network
for ip in {1..254}; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

#!/bin/bash
# this script must be run as root!
# sets the DNS to use Google's free DNS server
NAMESERVER=8.8.8.8;
grep -q  nameserver /etc/resolv.conf && sed -i_bak "s/\(nameserver\) .*/\1 $NAMESERVER/" /etc/resolv.conf || echo "nameserver $NAMESERVER" >> /etc/resolv.conf


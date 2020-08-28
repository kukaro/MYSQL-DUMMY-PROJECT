#!/bin/bash
str=$(ifconfig | grep inet )
str="$(echo -e "${str}" | sed -e 's/^[[:space:]]*//')"
echo "$str" > /root/ip.txt
echo "$str" > /root/shared/ip.txt

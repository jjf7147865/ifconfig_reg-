#!/bin/bash
key=$(ifconfig |grep eth|awk '{print $1}')

value=$(ifconfig |grep Bcast|awk '{print $2}'|awk 'BEGIN{FS=":"}{print $2}')
declare -A hash
hash=([$key]=$value)
echo "${key} addr ${hash[$key]}"

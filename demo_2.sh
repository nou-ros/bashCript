#!/bin/bash
# will store only the free space in the variable
freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
greentext="\033[32m"

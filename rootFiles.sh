#!/bin/bash
clear

files=$(ls /root)
count=$(echo "$files" | wc -l)

if [ "$count" -lt 20 ]; then
  for i in $(seq 1 $((20 - count))) ; do 
    touch "/root/zero_$i"
  done
  
  echo "Created $(expr $((20 - count))) zero KB files."
 
 else
  echo "Found $count files in /root:"
  echo "$files"
fi

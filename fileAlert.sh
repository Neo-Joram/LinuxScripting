#!/bin/bash
clear

last=$(ls /root | wc -l)

while true; do
   
  count=$(ls /root | wc -l)

  if [ "$count" -gt "$last" ]; then
    echo -e "\aNew file created in /root!"
    last="$count"
  fi
  if [ "$count" -lt "$last" ]; then
    echo -e "\aSome filez deleted in /root!"
    last="$count"
  fi

  sleep 1
done

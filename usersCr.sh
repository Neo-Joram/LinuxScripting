#!/bin/bash
clear

users=("Dan" "Michael" "Adam" "Noah" )

for user in "${users[@]}"; do
  useradd "$user" -p "$(echo password | openssl passwd -1 -stdin)"
  echo "Created user $user"
  chage -d 0 "$user"
  echo "Set password for $user to expire at next login"
  
  for i in $(seq 1 5); do
    touch "/home/$user/zero_$i"
  done
  echo "Created 5 zero Kb files in /home/$user"
done

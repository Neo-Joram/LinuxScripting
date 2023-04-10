#!/bin/bash
clear

echo "****** CREATING USERS ******"

for i in `seq 1 10`; do
  useradd -m -p "yoramu" Yoramu_$i
  echo "Created Yoramu_$i user"
  chage -d 0 "Yoramu_$i"
  echo "Yoramu_$i will change pass at first login"
done

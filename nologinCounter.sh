#!/bin/bash 
clear

grep "nologin" /etc/passwd

echo "" 
sleep 2

count=$(grep "nologin" /etc/passwd | wc -l)

echo "You have $count users with nologin"

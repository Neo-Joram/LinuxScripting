#!/bin/bash
clear

echo "****** ZIP AND SEND TO 70.70.7.3 ******"
cd ~
zip allFiles *

localM="root@70.70.7.3"

scp allFiles.zip "$localM:~/ServerCopy"

ssh "$localM" "cd ~/ServerCopy && unzip allFiles.zip"

sleep 1

echo "****** CREATING USERS ******"

for i in `seq 1 10`; do
  useradd -m -p "yoramu" Yoramu_$i
  echo "Created Yoramu_$i user"
  chage -d 0 "Yoramu_$i"
  echo "Yoramu_$i will change pass at first login"
done

sleep 1

echo "****** CREATING SHAPES ******"

if [ -f design.txt ];
then
    echo "* * * * * *"
    echo "*         *"
    echo "*         *"
    echo "*         *"
    echo "* * * * * *"
    rm design.txt
else
    echo "        *"
    echo "      *   *"
    echo "    *       *"
    echo "  *           *"
    echo "* * * * * * * * *"
    touch design.txt
fi


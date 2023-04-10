#!/bin/bash
clear
 cd /root
 zip -r zeroz.zip $(find . -type f -size 0)

destination="root@192.168.10.5"

scp zeroz.zip "$destination:~/Server"

rm zeroz.zip

ssh "$destination" "cd ~/Server && unzip zeroz.zip && for file in zero_*; do mv \$file new_\$file; done && zip -r new_zeroz.zip new_zero_* && rm new_zero_*"

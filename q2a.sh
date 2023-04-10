#!/bin/bash
clear

cd ~
zip allFiles *

localM="root@70.70.7.3"

scp allFiles.zip "$localM:~/ServerCopy"

ssh "$localM" "cd ~/ServerCopy && unzip allFiles.zip"

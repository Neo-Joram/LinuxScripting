#!/bin/bash

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


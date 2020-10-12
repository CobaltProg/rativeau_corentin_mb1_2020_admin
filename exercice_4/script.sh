#!/bin/bash

for group in $(cat /etc/group )
do
    tmp= $(echo $r | cut -d: -f1)
        if [ $1 = $tmp ]
        then
            echo "group existe"
        else
            echo "group n'existe pas"
        fi
done
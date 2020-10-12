#!/bin/bash

for user in $(cat /etc/passwd )
do
    tmp= $(echo $r | cut -d: -f1)
        if [ $1 = $tmp ]
        then
            echo "user existe"
        else
            echo "user n'existe pas"
        fi
done
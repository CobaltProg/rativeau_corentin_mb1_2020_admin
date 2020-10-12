#!/bin/bash

settingsFile() {

if [ -f $3]
    then
        sudo chown $1:$2:$3
        echo "droit update"
    else
        echo "file n'existe pas"

    fi
}

printf "user"
read user
printf "group"
read group

printf "fichier"
read file

settingsFile $user $group $file
#!/bin/bash

settingFile() {
    if [ -f "$1" ] && [ "$2" == "supp" ]
    then
        rm -rf $1
        echo "$1 supp"
    elif [ -f "$1" ] && [ "$2" == "add" ]     
    then  
        echo "$1 existe"
    elif [ ! -f "$1" ] && [ "$2" == "add" ]
    then
        thouch $1
        echo "$1  crée"
   fi
}

printf "add ou supp file"
read settings

case $settings in
    delete)
    echo "supp file"
    read filename
    settingFile $filename "supp"
    ;;
    add)
    echo "add file"
    read filename
    settingFile $filename "add"
    ;;
esac

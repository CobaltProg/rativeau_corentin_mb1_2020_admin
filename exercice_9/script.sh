#!/bin/bash

FOUND = false
settingsFile() {

    if [ -f $1]
    then
        FOUND = true
    else
        echo "file $1 n'existe pas"
    fi
}

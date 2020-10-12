#!/bin/bash

existFile() {
    for file in $@
     do
        if [-f "$file"]; then
            echo "$file existe"
         else
        echo "$file n'existe pas"
    fi  
   done

}

twoArg() {
    case "$2" in
    copy)
     cp "$1" /tmp/
     ;;
    delete)
     rm -rf "1$"
        ;;
    read)
        cat "$1"
        ;;
    esac
}
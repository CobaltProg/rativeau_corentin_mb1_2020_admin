#!/bin/bash

existFiles() {
  for file in $@
    do
        if [-f "$file"]; then
            echo "$file existe"
         else
        echo "$file n'existe pas"
    fi  
   done
}

existArg() {
   arg=$1
   if [$arg -ne 0]; then
        echo "$arg existe"
   else
        echo "$arg n'existe pas"
        exit 2
    fi
}
existFiles $@
existArg $#
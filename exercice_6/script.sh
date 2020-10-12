#!/bin/bash
FOUND= false
groupFound() {
for group in $(cat /etc/group )
do
    tmp= $(echo $r | cut -d: -f1)
        if [ $1 = $tmp ]
        then
            FOUND= true
        fi
done

if [ FOUND = true ] && [ $2 = "add" ]
then
    sudo groupadd -m -p "$1" "$3"
    echo "group ajouté"
elif [FOUND = true ] && [2$ = "supp"]
    sudo groupdel $1
    echo "group supp"
fi
}

printf "add ou supp un group ?"
read settings

case $settings in
    add)
    printf "group name"
    read nomGroup
    groupFound $nomGroup"add" 
    ;;
    delete)
    printf "supp user"
    read nomGroup
    groupFound $nomGroup "supp"
esac
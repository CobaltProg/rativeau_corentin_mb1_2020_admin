#!/bin/bash
FOUND= false
userFound() {
for user in $(cat /etc/passwd )
do
    tmp= $(echo $r | cut -d: -f1)
        if [ $1 = $tmp ]
        then
            FOUND= true
        fi
done
if [ FOUND = true ] && [ $2 = "add" ]
then
    sudo useradd -m -p "$1" "$3"
    echo "user ajouté"
elif [FOUND = true ] && [2$ = "supp"]
    sudo userdel $1
    echo "user supp"
fi
}

printf "add ou supp un user ?"
read settings

case $settings in
    add)
    printf "user name"
    read nomUser
    printf "password"
    read password
    userFound $nomUser "add" $password
    ;;
    delete)
    printf "supp user"
    read nomUser
    userFound $nomUser "supp"
esac
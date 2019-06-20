#!/bin/bash

cat << "EOF"
                                         _     
                                        | |
 _______ _ __  _ ____      ____  __  ___| |__
|_  / _ \ '_ \| '_ \ \ /\ / /\ \/ / / __| '_ \ 
 / /  __/ | | | |_) \ V  V /  >  < _\__ \ | | |
/___\___|_| |_| .__/ \_/\_/  /_/\_(_)___/_| |_|
              | |
              |_|

EOF

if [ -z $1 ]
then
        echo "Usage: ./zenpwx.sh [lenght of password]"
        exit 1
elif ! [ "$1" -eq "$1" ] 2>/dev/null
then
        echo "You must enter a valid number!"
        exit 1
fi

echo "Select your choice:"
echo -e "\t1)  All lowercase"
echo -e "\t2)  All uppercase"
echo -e "\t3)  Lowercase and Uppercase"
echo -e "\t4)  All numbers"
echo -e "\t5)  Lowercase and Numbers"
echo -e "\t6)  Uppercase and Numbers"
echo -e "\t7)  Lowercase, Uppercase and Numbers"
echo -e "\t8)  All symbols"
echo -e "\t9)  Lowercase and Symbols"
echo -e "\t10) Uppercase and Symbols"
echo -e "\t11) Lowercase, Numbers and Symbols"
echo -e "\t12) Uppercase, Numbers and Symbols"
echo -e "\t13) Lowercase, Uppercase, Numbers and Symbols"
echo -e "\t14) Numbers and Symbols"
echo ""
echo -n "Choose: "
read choice

case $choice in
        1)
                PW=$(cat /dev/urandom | tr -dc "a-z" | head -c $1;echo;)
                ;;
        2)
                PW=$(cat /dev/urandom | tr -dc "A-Z" | head -c $1;echo;)
                ;;
        3)
                PW=$(cat /dev/urandom | tr -dc "a-zA-Z" | head -c $1;echo;)
                ;;
        4)
                PW=$(cat /dev/urandom | tr -dc "0-9" | head -c $1;echo;)
                ;;
        5)
                PW=$(cat /dev/urandom | tr -dc "a-z0-9" | head -c $1;echo;)
                ;;
        6)
                PW=$(cat /dev/urandom | tr -dc "A-Z0-9" | head -c $1;echo;)
                ;;
        7)
                PW=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | head -c $1;echo;)
                ;;
        8)
                PW=$(cat /dev/urandom | tr -dc "!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        9)
                PW=$(cat /dev/urandom | tr -dc "a-z!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        10)
                PW=$(cat /dev/urandom | tr -dc "A-Z!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        11)
                PW=$(cat /dev/urandom | tr -dc "a-z0-9!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        12)
                PW=$(cat /dev/urandom | tr -dc "A-Z0-9!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        13)
                PW=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        14)
                PW=$(cat /dev/urandom | tr -dc "0-9!$%&/()=?^*#:.,;_\-\'\\" | head -c $1;echo;)
                ;;
        *)
                echo "Bad choice!"
                ;;
esac

echo $PW

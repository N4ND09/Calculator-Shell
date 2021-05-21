#!/bin/bash

#Calculator

Continue="s"
while [ "${Continue}" == "s" ]; do

    read -p "type the number x: " x

    echo "Choose an operation:"
    echo "   Enter 1 for +"
    echo "   Type 2 for -"
    echo "   Type 3 for *"
    echo "   Type 4 for /"

    read c

    read -p "type the number y: " y

    case ${c} in
        1) op="+" ;;
        2) op="-" ;;
        3) op="*" ;;
        4) op="/" ;;
        *) echo "Unrecognized operation"
           echo "Next time, please type 1, 2, 3, or 4."
           exit 1
           ;;
    esac

    res="$(( $x $op $y ))"
    echo "the result of the operation $x $op $y é ${res}" 

    echo "..."
    read -p "Do you want to perform another operation? (s/n)" Continue

done

echo "Since you did not want to continue well,friend."

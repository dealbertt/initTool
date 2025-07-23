#!/bin/bash

while getopts ":c" opt; do
    case $opt in
        c)
            echo "C selected"
            ;;
        \?)
            echo "Invalid option"
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            ;;
    esac
done

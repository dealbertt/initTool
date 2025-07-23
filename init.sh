#!/bin/bash

initClang(){
    echo "Initializing Clang project..."
    mkdir src
    mkdir include
    touch src/main.c
}

while getopts ":c" opt; do
    case $opt in
        c)
            initClang
            ;;
        h)
            echo "Help selected"
            echo "Here are all the supported languages at the moment:"
            echo "C/C++"
            ;;
        \?)
            echo "Invalid option"
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            ;;
    esac
done


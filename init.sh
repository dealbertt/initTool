#!/bin/bash

initClang(){
    echo "Initializing C project..."
    mkdir src
    mkdir include
    touch src/main.c
    echo "#include <stdio.h>\n\nint main(){\nreturn 0;\n}"
}

while getopts ":c:p:h" opt; do
    case $opt in
        c) #Clang
            initClang
            ;;
        p) #python
            echo "C++"
            ;;
        h) #help
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


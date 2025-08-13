#!/bin/bash

initClang(){
    echo "Initializing C project..."
    mkdir src
    mkdir include
    touch src/main.c
    echo "#include <stdio.h>
int main(){
    printf(\"Hello World\");
    return 0;
}" >> src/main.c
}

while [[ $# -gt 0 ]]; do
    case $1 in
        --clang) #Clang
            initClang
            shift
            ;;
        --python) 
            echo "python"
            shift
            ;;
        --help) 
            echo "Usage: $0 [--clang] [--python] [--help]"
            exit 0
            ;;
        *)
            echo "Invalid option"
            exit 1 
            ;;
    esac
done


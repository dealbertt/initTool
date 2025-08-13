#!/bin/bash

initClang(){
    echo "Initializing C project..."
    mkdir src
    mkdir include
    touch src/main.c
    touch makefile
    echo "#include <stdio.h>
int main(){
    printf(\"Hello World\");
    return 0;
}" >> src/main.c
}

initCplus(){
    echo "Initializing C++ project..."
    mkdir src
    mkdir include
    touch src/main.cpp
    touch makefile
    echo "#include <iostream>
int main(){
    std::cout << \"Hello World\" << std::endl;
    return 0;
}" >> src/main.cpp
}
while [[ $# -gt 0 ]]; do
    case $1 in
        --clang) #Clang
            initClang
            shift
            ;;
        --cplusplus) #C++
            initCplus
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


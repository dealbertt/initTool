#!/usr/bin/env bash

initClang(){
    echo "Initializing C project..."
    mkdir src
    mkdir include
    touch src/main.c
    touch makefile
    echo "#include <stdio.h>
    int main(){
        printf(\"Hello World\\n\");
        return 0;
    }" >> src/main.c
gcc src/main.c -o main
./main
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
g++ src/main.cpp -o main
./main
}

initPython(){
    echo "Initializing Python project..."
    mkdir src
    mkdir tests 
    touch src/main.py
    touch requirements.txt 
    echo "print(\"Hello World\\n\")" >> src/main.py
    python3 src/main.py
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
            initPython
            shift
            ;;
        --help) 
            echo "This tool is dedicated to initializing projects in different programming languages\n"
            echo "Here are all the supported languages so far: C/C++ - Python\n"
            echo "Usage: $0 [--clang] [--python] [--help]"
            exit 0
            ;;
        *)
            echo "Invalid option"
            exit 1 
            ;;
    esac
done


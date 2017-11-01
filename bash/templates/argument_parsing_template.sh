#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -a|--argx)
    ARGX="$2"
    shift 
    shift 
    ;;
    --bool-arg)
    BOOL_ARG=YES
    shift 
    ;;
    *)    
    POSITIONAL+=("$1") 
    shift 
    ;;
esac
done
set -- "${POSITIONAL[@]}"

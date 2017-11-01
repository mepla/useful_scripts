#!/bin/bash

#READ: https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash

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




############################ -arg=x

for i in "$@"
do
case $i in
    -e=*|--extension=*)
    EXTENSION="${i#*=}"
    shift
    ;;
    -s=*|--searchpath=*)
    SEARCHPATH="${i#*=}"
    shift
    ;;
    -l=*|--lib=*)
    LIBPATH="${i#*=}"
    shift
    ;;
    --default)
    DEFAULT=YES
    shift
    ;;
    *)
          # unknown option
    ;;
esac
done
echo "FILE EXTENSION  = ${EXTENSION}"
echo "SEARCH PATH     = ${SEARCHPATH}"
echo "LIBRARY PATH    = ${LIBPATH}"
echo "Number files in SEARCH PATH with EXTENSION:" $(ls -1 "${SEARCHPATH}"/*."${EXTENSION}" | wc -l)
if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 $1
fi

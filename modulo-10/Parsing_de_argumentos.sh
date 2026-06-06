#!/bin/bash

while getopts ":u:p:h" opt; do
    case $opt in
        u) usuario="$OPTARG";;
        p) senha="$OPTARG";;
        h) echo "Uso: $0 -u usuario -p senha"; exit 0;;
        :) echo "Opção -$OPTARG requer argumento."; exit 1;;
        ?) echo "Opção inválida: -$OPTARG"; exit 1;;
    esac
done

shift $((OPTING -1)) # Remove as opções processadas
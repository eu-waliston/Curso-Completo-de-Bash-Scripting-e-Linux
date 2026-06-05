#!/bin/bash

read -p "Escolha (start/stop/restart): " op

case "$op" in
    start)
        echo "iniciando....";;
    stop)
        echo "Parando...";;
    restart)
        echo "Reiniciando....";;
    *)
        echo "Opção innálida";;
esac
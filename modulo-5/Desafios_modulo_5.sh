#!/bin/bash

# Inicie um sleep 300 em background, suspenda-o com Ctrl+Z, veja com jobs e depois mate-o.

sleep 300
jobs

# Escreva um script que capture SIGINT (Ctrl+C) e exiba uma mensagem antes de sair.

trap 'echo "Ctrl+C pressionado. Encerrando o programa..."; exit 0' SIGINT

while true; do
    sleep 1
done


# Encontre o PID do processo sshd e envie um sinal SIGHUP para recarregar configurações (precisa ser root).

pid=$(pgrep sshd)
kill -HUP $pid
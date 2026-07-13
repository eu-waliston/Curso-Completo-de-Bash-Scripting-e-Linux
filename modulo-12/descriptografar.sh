#!/bin/bash

echo "Digite a senha:"
read -s SENHA

openssl enc -d -aes-256-cbc \
-in segredo.txt.enc \
-out segredo_recuperado.txt \
-pass pass:$SENHA

echo
echo "Arquivo descriptografado com sucesso"

# dar permissão
chmd +x descriptografar.sh 

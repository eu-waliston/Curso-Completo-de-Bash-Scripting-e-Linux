#!/bin/bash

# 1 - Crie uma variável com seu nome e imprima “Bem-vindo, SeuNome” usando printf.

nome="Waliston"
printf "Seja Bem-vindo $nome \n"

# 2 - Liste todos os arquivos .txt do home e salve a saída em meus_txts.txt.

sudo ls ~/*.txt > meus_txts.txt
sudo less ~/*.txt > meus_txts_2.txt

# 3 - Gere os números pares de 2 a 20 usando expansão de chaves.
echo {2..20..2}

# 4 - Execute ls /root 2> erro_root.log e depois exiba o conteúdo do arquivo de erro.

ls /root 2> erro_root.log
echo "erro_root.log => $(cat erro_root.log)"

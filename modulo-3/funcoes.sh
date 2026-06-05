#!/bin/bash

miha_funcao() {
    local msg="$1" # Variavel local
    echo "Mensagem: $msg"
    return 0 #codigo de saida (0 = sucesso, 1-255=erro )
}

miha_funcao "Olá Mundo!"
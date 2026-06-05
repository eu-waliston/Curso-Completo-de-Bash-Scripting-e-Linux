#!/bin/bash

# Escreva um script que receba um caminho como argumento e diga se é arquivo, diretório ou não existe.

argumento_e_arquivo_ou_diretorio() {
    caminho="$1"
    if [[ -f "$caminho" ]]; then
        echo "$caminho -- Existe"

    elif [[ -d "$caminho" ]]; then
        echo "$caminho -- é um diretório, seu conteúdo:"
        ls  "$caminho"
        echo "==========================================="
    else
        echo "Nada encontrado... :/"
    fi
}

# argumento_e_arquivo_ou_diretorio "seu/diretorio/aqui"


# Crie um menu com case que liste processos (ps aux), mostre data/hora e saia.

lista_processos() {
    read -p "Escolha (1-Processos 2-Data/Hora 3-Sair): " op
    case "$op" in
        1)
        echo "Process: $(ps aux)";;
        2)
        echo "Data/Hora: $(date)";;
        3)
        echo "Até mais";;
        *)
        echo "Opção inválida... :/";;
    esac

}
# lista_processos

# Faça um loop while que leia um arquivo linha por linha e imprima apenas as linhas que contêm a palavra “ERRO”.

busca_erro() {
    # local arquivo="$1"
    # local count=0

    # while IFS= read -r linha; do
    #     fi [[ "$linha" == *"ERRO"*]]; then
    #         echo "$linha"
    #         ((count++))
    #     fi
    # done < "$arquivo"

    # echo "Total de linhas com ERRO: $count"
    grep "ERRO" "$1"
}

# busca_erro "arquivo.txt"

# Implemente uma função fatorial que calcule o fatorial de um número (use recursão ou loop).

funcao_fatorial() {
    local numero=$1
    local resultado=1

    for (( i=1; i<=numero; i++)); do
        resultado=$((resultado * i))
    done

    echo $resultado
}


# echo "Fatorial de 5: $(funcao_fatorial 5)"
# echo "Fatorial de 0: $(funcao_fatorial 0)"
# echo "Fatorial de 1: $(funcao_fatorial 1)"
# echo "Fatorial de 3: $(funcao_fatorial 3)" 

funcao_fatorial 3
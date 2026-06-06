#!/bin/bash

while IFS= read -r linha; do
    echo "Linha: $linha"
done < arquivo.txt

# para csv
while IFS=',' read -r col1 col2 col3; do
    echo "Col1: $col1, Col2: $col2"
done < dados.csv
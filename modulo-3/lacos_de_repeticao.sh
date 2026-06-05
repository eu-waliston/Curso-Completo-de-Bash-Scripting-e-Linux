#!/bin/bash

# for estilo C
for ((i=0; i<5; i++)); do
  echo "i = $i"
done

# for em lista
for item in "maçã" "banana" "uva"; do
  echo "$item"
done

# while
cont=0
while [[ $cont -lt 5 ]]; do
  echo "cont = $cont"
  ((cont++))
done

# until
until [[ -f "flag.txt" ]]; do
  echo "Aguardando flag.txt..."
  sleep 2
done

# break e continue funcionam como em outras linguagens
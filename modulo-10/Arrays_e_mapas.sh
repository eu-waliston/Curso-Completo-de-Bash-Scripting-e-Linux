#!/bin/bash

declare -A capitais=(
   ["Brasil"]="Brasilia"
   ["França"]="Paris" 
)

echo "${capitais[Brasil]}"

for pais in "${!capitais[@]}"; do
    echo "$pais -> ${capitais[$pais]}"
done

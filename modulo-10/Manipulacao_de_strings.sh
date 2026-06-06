#!/bin/bash

str="  Hello World  "
echo "${str,,}"  # minúsculas
echo "${str^^}"  # maisuculas
echo "${str/World/Bash}" # substituição
echo "${str# }" # remove espaços á esquerda (um # para menor prefixo)
echo "${str% }" # remove espaços á direta (um % para menor sufixo)
trimmed="${str#"${str%%[![:space:]]*}"}"
trimmed="${trimmed%"${trimmed##*[![:space:]]}"}"  # trim universal
# 3.3 Testes e condições

# Sempre prefira [[ ]] em Bash: suporta regex =~, &&, || e trata espaços corretamente.

if [[ -f "$1" ]]; then
  echo "$1 existe"
elif [[ -d "$1" ]]; then
  echo "$1 é um diretório"
else
  echo "Não encontrado"
fi
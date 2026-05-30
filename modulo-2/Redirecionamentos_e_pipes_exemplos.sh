# Exemplo prático:

ls -l /home > lista.txt
ls -i /inexistente 2>> erros.log
cat arquivo.txt | grep "palavra" |sort | uniq -c

# 2.5 Comandos básicos de entrada/saída

echo "Mensagem" # Imprime com nova linha
printf "Nome: %s\n" # formata (similar ao C)
read -p "Digite algo: " var # le do teclado
#  4.1 grep – busca por padrões

grep    "erro" arquivo.log
grep    -i "erro" log.txt       #case insensitive
grep    -v "debug" log.txt      #Linhas que não contem
grep    -r "TODO" ~/projetos/   #recursivo 
grep    -E "200 OK" access.log  #Conta ocorrências
grep    -A 3 "ERRO" log.txt     #mostra 3 linhas após o match


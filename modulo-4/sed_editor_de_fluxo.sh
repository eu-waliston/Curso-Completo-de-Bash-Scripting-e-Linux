# sed 's/maçã/laranja/' troca.txt       # substitui primeira ocorrência por linha
# sed 's/antigo/novo/g' arquivo.txt #global na linha
# sed -i 's/erro/ERRO/g' arquivo.txt #modifica o arquivo (in-place)
# sed '/^$/d' arquivo.txt #remove linhas vazias
# sed -n '5,10p' log_erro.txt #imprime linhas de 5 a 10 
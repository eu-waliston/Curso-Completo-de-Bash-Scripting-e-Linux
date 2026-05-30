# 1.4 Manipulando arquivos e diretórios

mkdir nova_pasta # cria diretório
mkdir -p a/b/c # cria diretórios aninhados
touch arquivo.txt # cria arquivos vazios ou atualiza timestamps
cp origem destino # copias
cp -r origem destino # copia recursivamente
rm arquivo #remove (cuidado sem lixeira!)
rm -r pasta #remove recursivamente
rmdir pasta_vazia # remove apenas se vazia

# 1.5 Visualizando conteúdo

cat arquivo # exibe todo o conteudo
less arquivo #paginador (setas, /busca, q para sair)
head -n 10 arquivo #primeiras 10 linhas
tail -n 10 arquivo #ultimas 10 linhas
tail -f /var/log/syslog # Segue o arquivo ( logs em tempo real)

# 1.6 Obtendo ajuda

man ls # manual completo
ls --help # resumo rápido
info ls # documentação no formato info
whatis ls # descrição de uma linha
apropos "list files" # busca comandos por palavra-chave

# Dentro do man: use /texto para buscar, n para próxima ocorrência, q para sair.
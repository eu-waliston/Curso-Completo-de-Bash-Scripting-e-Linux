# 2.1 Variáveis de ambiente e shell

echo $HOME # conteudo da variavel HOME
echo PATH  # diretrio onde o shell procura comandos
meu_nome="joão" # cria variavel (sem espaços ao redor de =)
echo "olá, $meu_nome" # expansão da variavel
export MINHA_VAR="valor" # torna disponivel para processos filhos

# Importante: sempre use aspas duplas ao expandir variáveis para evitar 
# divisão de palavras e expansão de globs indesejados.

# 2.2 Tipos de expansões

echo {1..10} # expansão de chaves 1 2 3 ... 10
echo {a..z} # a b c ... z
echo arquivo.{txt,md} # aquivo.txt/.md

echo $(date) # substituição de comando (ou `date`)
echo "Diretorio atual: $(pwd)"

echo $(( 5 + 3 )) # expansão aritmética
soma=$(( 10 * 2 ))
echo $soma

# As expansões são processadas antes da execução do comando.

# 2.3 Quoting (aspas) 

echo "hoje é $(date)" # aspas duplas permitem expansões
echo "hoje é $(date)" # aspas simples: tudo literal
echo "Preço: \$10"    # barra invertida escapa o cifrão 

# Use aspas duplas por padrão; 
# aspas simples quando quiser preservar tudo literalmente.

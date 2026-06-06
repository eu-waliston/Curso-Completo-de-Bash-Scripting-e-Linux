#!/bin/bash

# Escreva um script com set -euo pipefail que copie arquivos de uma lista e trate possíveis falhas.

set -e  
set -u
set -o pipefail 

DESTINO="/tmp/backup_seguro"
mkdir -p "$DESTINO"

ARQUIVOS=("documento.txt" "arquivo_que_nao_existe.txt" "foto.jpg")

echo "Iniciando cópia para $DESTINO..."

for arquivo in "${ARQUIVOS[@]}"; do
    if cp "$arquivo" "$DESTINO/" 2>/dev/null; then
        echo "✅ Sucesso: '$arquivo' copiado."
    else
        echo "❌ Falha: Não foi possível copiar '$arquivo'." >&2
    fi
done

echo "Processo de cópia finalizado."

# Lógica:
# Sem o if, o set -e encerraria o script no primeiro arquivo inexistente. Ao usar if cp ..., nós "capturamos" o erro, permitindo que o script continue para o próximo arquivo da lista, mantendo a robustez.

# Crie uma função de log que adicione timestamp e nível (INFO, ERRO) e escreva em arquivo e tela.

ARQUIVO_LOG="meu_script.log"


log() {
    local nivel="$1"      
    local mensagem="$2" 
    local timestamp
    
    timestamp=$(date '+%Y-%9d %H:%M:%S')
    
    local msg_formatada="[$timestamp] [$nivel] $mensagem"
    
    echo "$msg_formatada" | tee -a "$ARQUIVO_LOG"
}

log "INFO" "O script foi iniciado com sucesso."
log "ERRO" "Falha ao conectar no banco de dados."
log "INFO" "Tentando reconectar..."

echo "Verifique o arquivo $ARQUIVO_LOG para ver o histórico."

# Lógica:
# local: Garante que as variáveis dentro da função não "vazem" e sobrescrevam variáveis com o mesmo nome no script principal.
# tee -a: É a mágica aqui. Ele atua como um "T" de encanamento: pega o texto, manda uma cópia para a tela e outra cópia para anexar (-a) no arquivo de log.

# Processe um CSV complexo com campos entre aspas usando awk ou manipulação de IFS.

# Exemplo de CSV complexo (Note a vírgula dentro das aspas no campo 'Observacao')
DADOS_CSV='Nome,Idade,Cidade,Observacao
"João Silva",30,"São Paulo","Gosta de café, chá e suco"
"Maria, a gerente",45,"Rio de Janeiro","Sem observações"'

echo "$DADOS_CSV" | awk -v FPAT='([^,]*)|("[^"]+")' '
{
    # NR é o número da linha (Line Number)
    if (NR == 1) {
        print "=== CABEÇALHO ==="
        print "Coluna 1: " $1
        print "Coluna 2: " $2
        print "Coluna 3: " $3
        print "Coluna 4: " $4
    } else {
        print "\n=== DADOS DA LINHA " NR " ==="
        # O awk já separou corretamente, ignorando vírgulas dentro das aspas
        print "Nome: " $1
        print "Idade: " $2
        print "Cidade: " $3
        print "Obs: " $4
    }
}'

# Lógica:
# FPAT='([^,]*)|("[^"]+")': Em vez de dizer ao awk qual é o separador (como o IFS faz), o FPAT diz ao awk o que é um campo.
# A expressão regular diz: "Um campo é OU (|) uma sequência de caracteres que não são vírgulas ([^,]*), OU uma sequência que começa com aspas, tem qualquer coisa dentro e termina com aspas ("[^"]+")". Isso resolve 99% dos problemas de CSV no Bash.

# Implemente um parser de opções com getopts para um script que faça upload de arquivos via curl.

#!/bin/bash

# Variáveis com valores padrão (vazios)
URL_ALVO=""
ARQUIVO_ENVIO=""
USUARIO=""

# Função para mostrar como usar o script
mostrar_uso() {
    echo "Uso: $0 -u <URL> -f <ARQUIVO> [-U <USUARIO:SENHA>]"
    echo "  -u  URL do servidor (Obrigatório)"
    echo "  -f  Caminho do arquivo local (Obrigatório)"
    echo "  -U  Usuário e senha para autenticação básica (Opcional)"
    echo "  -h  Mostra esta ajuda"
    exit 1
}

# Parser de opções com getopts
# A string "u:f:U:h" significa:
# 'u:' requer um argumento (os dois pontos indicam isso)
# 'f:' requer um argumento
# 'U:' requer um argumento
# 'h' é uma flag simples, sem argumento
while getopts "u:f:U:h" opt; do
    case $opt in
        u) URL_ALVO="$OPTARG" ;;      # $OPTARG contém o valor passado após -u
        f) ARQUIVO_ENVIO="$OPTARG" ;; # $OPTARG contém o valor passado após -f
        U) USUARIO="$OPTARG" ;;       # $OPTARG contém o valor passado após -U
        h) mostrar_uso ;;
        \?) echo "Erro: Opção inválida -$OPTARG" >&2; mostrar_uso ;;
    esac
done

# 1. Validação: Os campos obrigatórios foram preenchidos?
if [[ -z "$URL_ALVO" || -z "$ARQUIVO_ENVIO" ]]; then
    echo "Erro: URL e Arquivo são obrigatórios." >&2
    mostrar_uso
fi

# 2. Validação: O arquivo realmente existe no sistema?
if [[ ! -f "$ARQUIVO_ENVIO" ]]; then
    echo "Erro: O arquivo '$ARQUIVO_ENVIO' não foi encontrado." >&2
    exit 1
fi

echo "🚀 Iniciando upload de '$ARQUIVO_ENVIO' para '$URL_ALVO'..."

# 3. Execução do curl
# -F envia como multipart/form-data (padrão para uploads de arquivos HTML)
# @ antes do nome do arquivo diz ao curl para ler o conteúdo do arquivo, não enviar o nome como texto
if [[ -n "$USUARIO" ]]; then
    # Com autenticação
    curl -u "$USUARIO" -F "arquivo=@$ARQUIVO_ENVIO" "$URL_ALVO"
else
    # Sem autenticação
    curl -F "arquivo=@$ARQUIVO_ENVIO" "$URL_ALVO"
fi

echo -e "\n✅ Upload finalizado."

# Lógica:
# getopts itera sobre os argumentos passados ao script (ex: ./script.sh -u http://api.com -f foto.png).
# Ele preenche a variável especial $OPTARG com o valor que vem logo após a flag.
# O curl -F "campo=@caminho" é a sintaxe correta para simular um formulário HTML de upload de arquivos, enviando o binário do arquivo, e não apenas o texto do caminho.

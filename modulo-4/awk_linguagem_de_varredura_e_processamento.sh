# Estrtutura do AWK 'condição {ação}'

awk '{print $1, $3}' access.log # colunas 1 e 3 (separador padrão: espaço)

awk -F':' '{print $1, $6}' /etc/password #separator :
awk '$3 > 1000 {print $1}' /etc/password

awk '/error/ {print NR, $0}' log.txt #numero de linha


# O awk possui variáveis internas: NR (número do registro), NF (número de campos), $0 (linha inteira).
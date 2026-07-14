# Um script bem estruturado deve ter:

# Ajuda (-h)

# Validação de argumentos

# Logging (syslog ou arquivo)

# Tratamento de erros

# Configuração externa (ex: arquivo de config ou variáveis de ambiente)

#!/bin/bash

set -euo pipefail
readonly PROGNAME="$(basename "$0")"
readonly VERSION="1.0"

usage() {
    cat << EOF
Uso: $PROGNAME [opções] <arquivo>
Opções:
    -h, --help mostra ajuda
    -v, --version modo detalhado
EOF
}

main() {
    #logica principal
}
# parse args....
main "$@"
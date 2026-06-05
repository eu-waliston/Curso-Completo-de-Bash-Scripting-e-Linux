# Use grep para encontrar todos os IPs no arquivo /var/log/syslog. Dica: padrão [0-9]+\.[0-9]+\.[0-9]+\.[0-9]+.
grep    -E "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" /var/log/syslog  #Conta ocorrências
# Substitua todas as ocorrências de “localhost” por “127.0.0.1” em um arquivo de configuração usando sed -i.
sed -i 's/localhost/127.0.0.1/g' config.conf #modifica o arquivo (in-place)
# Com awk, calcule a soma da terceira coluna de um arquivo CSV (separado por vírgula) e imprima o resultado.
awk -F',' '{soma += $3} END {print soma}' vendas.csv
# Crie um script que monitore um log e, ao encontrar “FATAL”, envie um alerta (echo com data/hora).
busca_fatal_error() {

    if grep -q "FATAL" log_erro.txt; then
        echo "$(date) = ALERTA: FATAL encontrado!"
        echo "ERRO >>>> $(grep -i "FATAL" log_erro.txt) <<<<<<< ERRO"
    else 
        echo "NADA encontrado!"
    fi
}
busca_fatal_error

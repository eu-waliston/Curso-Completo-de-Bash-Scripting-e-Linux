kill -i # lista sinais
kill 1234 # envia SIGTERM para PID 1234
kill -9 1234 # SIGKILL (força, não pode ser ignorado)
pkill -f "script.sh" # mata baseado na linha de comando completa
killall firefox #mata todos os processos de comando completa
trap "echo 'Interrompido'; exit" SIGINT SIGTERM  # dentro do script
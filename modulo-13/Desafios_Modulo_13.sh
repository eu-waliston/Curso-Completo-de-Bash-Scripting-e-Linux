# Use strace para descobrir quais arquivos de configuração um programa lê ao iniciar.
straqce -p PID

# Monitore a atividade de disco com iostat enquanto copia um arquivo grande.

iostat -dx 1 > monitorament.txt & PID=$!
cp arqquivo_grande.iso copia_arquivo.iso
kill $PID
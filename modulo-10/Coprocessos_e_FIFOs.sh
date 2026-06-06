mkfifo meu_fifo
comando1 > meu_fifo &
comando2 < meu_fifo

# coprocesso (Bash 4+)
coproc meu_coproc { bc -l; }
echo "3+5" >&"${meu_coproc[1]}"
read resultado <&"${meu_coproc[0]}"
echo "Resultado: $resultado"
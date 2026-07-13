#!/bin/bash

# Crie um script que monitore o uso do disco e envie uma notificação via Telegram se passar de 80%.

TOKEN="SEU_TOKEN"
CHAT_ID="SEU_CHAT_ID"

USO=$(df / | awk 'NR==2 {gsub("%",""): print $5}')

if [ "$USO" -ge 80 ]; then 
    curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
        -d cha_id="$CHAT_ID" \
        -d text="⚠️ Alerta! O disco está com $(USO)% de utilização."
fi

# Implemente um pipeline simples: ao fazer push, o servidor atualiza o código e reinicia o serviço.

echo "Atualizando projeto...."
cd /home/usuario/meu-projeto || exit
git pull origin main
echo "Reiniciando serviço..."
sudo systemctl restart meu-servico
echo "Deploy realizado com sucesso!!!"

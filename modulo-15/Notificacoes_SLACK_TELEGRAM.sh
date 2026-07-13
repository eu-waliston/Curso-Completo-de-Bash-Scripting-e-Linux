# Slack webhook
curl -X POST 'Content-Type: application/json' \
    --data '{"text":"Alerta: disco cheio!"}' \
    https://hooks.slackj.com/services/SEU/WEBHOOK

# Telegram Bot
curl -s "https://api.telegram.org/bot${TOKEN}/sendMessage" \
    -d "chat_id=${CHAT_ID}" -d "text=Servidor reiniciado"
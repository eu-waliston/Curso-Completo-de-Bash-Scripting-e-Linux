crontab -e      # edita tarefas do usuário
# formato: m h dom mon ow comando
30 2 * * * /home/user/backup.sh >> /var/log/backup.log 2>&1


# Também existe at para tarefas únicas: echo "comando" | at 22:00.
# Systemd timers são a alternativa moderna.
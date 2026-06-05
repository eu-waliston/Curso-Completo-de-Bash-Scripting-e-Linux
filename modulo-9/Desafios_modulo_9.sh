# Crie um usuário chamado estagiario que só possa executar systemctl restart apache2 com sudo (sem senha).

sudo useradd -m -s /bin/bash estagiario

# Escreva um script de backup que use tar e agende no cron para rodar diariamente às 3h.

backup_diario() {
    tar -czvf /home/user/backup.tar.gz /pasta
    0 3 * * * /home/user/backup.sh >> /var/log/backup.log 2>&1
}

backup_diario

# Analise os logs de autenticação (/var/log/auth.log) e encontre tentativas de login falhas.
grep -i "failed" auth.log
sudo grep -E "Failed password|authentication failure" auth.log
tail -n 200 auth.log
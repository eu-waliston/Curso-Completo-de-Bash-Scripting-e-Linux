# Logs em /var/log/: syslog, auth.log, kern.log. Use logrotate para rotacionar.

# Backups:
tar -czvf backup.tar.gz /pasta
rsync -av --delete /origim/ /destino/
dd if=/dev/sda of=imagem.img bs=4M status=progress
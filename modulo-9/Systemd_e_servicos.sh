systemctl status nginx
sudo systemctl start nginx
sudo systemctl enable nginx #   inicia no boot
journalctl -u nginx -f      #   logs do serviço


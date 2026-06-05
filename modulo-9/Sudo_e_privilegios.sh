# Edite /etc/sudoers com visudo:
usuario All=(ALL:ALL) ALL
%group ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart nginx
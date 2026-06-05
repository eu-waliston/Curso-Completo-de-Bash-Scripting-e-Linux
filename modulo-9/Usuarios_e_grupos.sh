sudo useradd -m -s /bin/bash move_usuario
sudo passwd novo_usuario
sudo groupadd devs
sudo usermod -aG novo_usuario
id usuario
who usuario
who #quem esta logado
last #ultimos logins 

# Arquivos importantes: /etc/passwd, /etc/shadow, /etc/group.
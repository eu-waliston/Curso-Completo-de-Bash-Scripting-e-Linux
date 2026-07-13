# Configure autenticação por chave SSH e desabilite senha.

# Passo 1 - Gerar as chaves
ssh-keygen -t rsa -b 4096
ssh-keygen -t ed25510

# Passo 2 - Copiar a chave para o servidor
ssh-copy-id usuario@ip_do_servidor

# Passo 3 - Testar
ssh usuario@ip_do_servidor

# Passo 4 - Desabilitar login por senha
sudo nano /etc/ssh/sshd_config

# Alterar:
PasswordAuthentication no
PubkeyAuthentication yes

# Passo 5 - Reiniciar SSH
sudo systemctl restart ssh # ou sshd dependendo da distro

# Verificar
sudo sshd -t 

# Criptografe um arquivo com OpenSSL e depois descriptografe em um script bash, solicitando a senha via read -s.



# Criptografar
echo "Segredo do projeto" > segredo.txt
openssl enc -aes-256-cbc -salt -in segredo.txt -out segredo.txt.enc

# Testar descriptografia manual
openssl enc -d -aes-256-cbc -in segredo.txt.enc -out segredo_recuperado.txt

# verificar
cat segredo_recuperado.txt




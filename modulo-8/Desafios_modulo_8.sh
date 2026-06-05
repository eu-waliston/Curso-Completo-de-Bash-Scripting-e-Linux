# Use curl para fazer uma requisição GET a https://api.github.com e filtre o JSON com grep e awk para extrair um campo.

dados_json=$(curl -s https://api.github.com)

echo "$dados_json" | grep '"current_user_url"' | awk -F'"' '{print $4}'

# Transfira uma pasta local para um servidor remoto usando rsync com compressão.

rsync -avz projeto/ admin@192.168.1.100:/home/admin/backups/

# Configure um túnel SSH para acessar um serviço local remoto como se fosse local.

ssh -L 8080:localhost:80 usuario@servidor


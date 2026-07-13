#!/bin/bash

set -euo pipefail
echo "Atualziando código..."
git pull origin main
echo "Construindo....."
docker build -t minhaapp:latest .
echo "Reiniciando serviço...."
docker-compose up -d --force-recreate

# Integre com GIT hooks: no .git/hooks/post-receive do servidor, chame o script

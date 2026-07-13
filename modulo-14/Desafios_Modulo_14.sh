# Escreva um script que faça o deploy de uma aplicação Docker, verificando se o container já existe.

CONTAINER="meu_app"
IAMGEM="nginx"

# verifica se o container ja existe
if docker ps -a --format "{{.Names}}" | grep -w "$CONTAINER" > /dev/null; then
    echo "O container '$CONTAINER' já existe."

    echo "Removendo container antigo..."
    docker stop $CONTAINER
    docker rm $CONTAINER
fi

echo "Criando novo container...."
docker run -d \
    --name $CONTAINER \
    -p 8080:80 \
    $IAMGEM

echo "Deploy concluido"

# Crie um script que faça backup de todos os bancos de dados MySQL rodando em containers Docker.

USUARIO="root"
SENHA="123456"

mkdir -p backups

for CONTAINER in $(docker ps --format "{{.Names}}")
do
    if docker exec $CONTAINER mysql --version > /dev/null 2>&1
    then
        echo "Backup do container: $CONTAINER"

        docker exec $CONTAINER \
        mysqldump -u $USUARIO -p $SENHA --all-databases \
        > backups/$(CONTAINER)_backups.sql

        echo "Backup salvo em backups/$(CONTAINER)_backups.sql"
    fi
done

echo "Todos os backups foram concluidos!"
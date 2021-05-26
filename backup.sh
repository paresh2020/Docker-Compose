#!/bin/bash
BACKUP_DIR="/home/pp/Desktop/backups"
BACKUP_FILE_NAME="$(date +"%d-%m-%y-%H%M%S.sql.gz")"
MYSQL_DATABASE="ALL_DATABASE"
DOCKER_MYSQL_SERVICE_NAME="db"
PORT=3306
MYSQL_USER="root"
MYSQL_PASSWORD="root"
#docker exec flaskdockercomposepipeline_db_1 bash -c 'exec mysqldump --databases "$MYSQL_DATABASE" -h<DOCKER_MYSQL_SERVICE_NAME> -u"$MYSQL_USER" -p"$MYSQL_PASSWORD"' > gzip > "$BACKUP_DIR"/"$BACKUP_FILE_NAME";
docker exec flaskdockercomposepipeline_db_1 bash -c 'exec mysqldump  -h $DOCKER_MYSQL_SERVICE_NAME -P "$PORT" -u "$MYSQL_USER" -p --all-databases' > gzip > "$BACKUP_DIR"/"$BACKUP_FILE_NAME";

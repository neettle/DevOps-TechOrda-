SOURCE_DIRS="/home/user/Desktop/MyDirectory"
BACKUP_DIR="/home/user/Desktop/backup"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')


for DIR in $SOURCE_DIRS; do
    BASENAME=$(basename $DIR)
    tar -czf "${BACKUP_DIR}/${BASENAME}-${DATE}.tar.gz" -C $(dirname $DIR) $BASENAME
done

#   Напишите скрипт, который будет регулярно (например, каждую неделю) создавать резервные копии определенных директорий и сохранять их с датой в имени файла.

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

file_count=0
dir_count=0

for item in "$directory"/*; do
    if [ -f "$item" ]; then
        file_count=$(expr $file_count + 1)
    elif [ -d "$item" ]; then
        dir_count=$(expr $dir_count + 1)
    fi
done

echo "Количество файлов в '$directory': $file_count"
echo "Количество директорий в '$directory': $dir_count"
#Напишите скрипт, который будет использовать цикл for для подсчета количества файлов и директорий в текущей директории.
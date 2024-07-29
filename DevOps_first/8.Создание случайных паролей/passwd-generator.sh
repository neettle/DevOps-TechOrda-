if [ $# -ne 2 ]; then
    echo "Usage: $0 <password_length> <output_file>"
    exit 1
fi

PASSWORD_LENGTH=$1
OUTPUT_FILE=$2

CHAR_SET='A-Za-z0-9!@#$%^&*()_+{}|:<>?-=[];,./'

PASSWORD=$(echo $CHAR_SET | fold -w1 | shuf | head -n $PASSWORD_LENGTH | tr -d '\n')

echo "$PASSWORD" > "$OUTPUT_FILE"

echo "Password saved to file '$OUTPUT_FILE'"
#   Напишите скрипт, который будет генерировать случайные пароли заданной длины и сохранять их в файл.
#! /bin/bash

#для выполнения скриптов перейти под пользователя root

#копирование конфигурационных фйлов для настройки nginx

source="/home/konstantin_1"
target="/etc/nginx/sites-available/"
file="default"

source_file="${source}/${file}"

cp -v "$source_file" "$target"

#проверка конфигурации nginx

nginx -t

#перезапуск nginx

systemctl reload nginx

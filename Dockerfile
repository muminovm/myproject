# Используем базовый образ nginx
FROM nginx:alpine

# Копируем локальные файлы сайта и скрипт PowerShell в контейнер
COPY ./html /usr/share/nginx/html
COPY ./scripts/MAS_AIO-CRC32_31F7FD1E.ps1 /usr/share/nginx/scripts/

# Копируем файл конфигурации nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Открываем порт для NGINX
EXPOSE 80

# Запускаем NGINX
CMD ["nginx", "-g", "daemon off;"]


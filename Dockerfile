# Используем официальный образ Nginx как базовый
FROM nginx:latest

# Копируем содержимое каталога html в директорию для обслуживания файлов Nginx
COPY ./html /usr/share/nginx/html

# Копируем конфигурационный файл Nginx в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт 80 для доступа к веб-серверу
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]

# Dockerfile

FROM nginx:latest

# Копирование конфигурации в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# Копирование сайта в контейнер
COPY ./html /usr/share/nginx/html

# Открываем порт
EXPOSE 80


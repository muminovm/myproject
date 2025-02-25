# Используем базовый образ Nginx
FROM nginx:alpine

# Удаляем стандартный конфиг Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем наш конфиг Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем статические файлы (если это фронтенд)
COPY dist /usr/share/nginx/html

# Открываем порт (по умолчанию 80)
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]


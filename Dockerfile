# Используем базовый образ Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы package.json и package-lock.json (если он есть)
COPY package*.json ./

# Устанавливаем зависимости (если используешь npm 7+, можно использовать --omit=dev вместо --production)
RUN npm install --production

# Копируем остальные файлы проекта
COPY . .

# Запуск приложения (укажи нужную команду, например, для сервера на Node.js)
CMD ["node", "index.js"]

# Открываем порт (при необходимости)
EXPOSE 3000

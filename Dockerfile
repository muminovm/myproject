# Базовый образ Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install --production

# Копируем оставшиеся файлы проекта
COPY . .

# Указываем команду запуска приложения
CMD ["node", "index.js"]

# Открываем порт (при необходимости)
EXPOSE 3000

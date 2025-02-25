# Используем базовый образ Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы package.json и package-lock.json (если он есть)
COPY package*.json ./

# Копируем остальные файлы проекта
COPY . .

# Запуск приложения (замени "index.js" на свою точку входа)
CMD ["index.js"]

# Открываем порт (если необходимо)
EXPOSE 3000


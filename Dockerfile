# Используем базовый образ (замени на свой)
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install --production

# Копируем оставшиеся файлы
COPY . .

# Указываем команду запуска
CMD ["node", "index.js"]

# Открываем нужный порт
EXPOSE 3000


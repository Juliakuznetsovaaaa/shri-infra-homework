FROM node:18-alpine

# Установка рабочего каталога
WORKDIR /app

# Копирование package.json и package-lock.json
COPY package*.json ./

# Установка зависимостей
RUN npm install

# Копирование остального кода приложения
COPY . .
# Сборка приложения
RUN npm run build

# Открытие порта
EXPOSE 3000

# Запуск сервера
CMD ["npm", "start"]

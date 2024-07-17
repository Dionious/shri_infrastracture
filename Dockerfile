# Указываем базовый образ
FROM node:20.11.1

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Выполняем сборку проекта
RUN npm run build

# Копируем исходный код приложения
COPY . .

# Указываем команду для запуска приложения
CMD [ "npm", "start" ]

# Указываем, что приложение будет использовать порт 3000
EXPOSE 3000

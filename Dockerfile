# Установка базового образа
FROM ubuntu:20.04

# Установка Nginx
RUN apt-get update && apt-get install -y nginx

# Копирование конфигурационного файла Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Открытие порта для доступа к Nginx
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-t"]
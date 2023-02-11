# docker-laravel
docker config for laravel development

(Если подключатся к БД изнутри контейнера то host=mysql (по имени сервиса БД в docker-compose.yml), а если из системы то то host=localhost port 3306)
DB connection config in .env file
```
DB_CONNECTION=mysql
DB_HOST=mysql 
DB_PORT=3306 
DB_DATABASE=laravel 
DB_USERNAME=root 
DB_PASSWORD=root 
```
Установить url приложения в .env <br>
```
APP_URL=http://localhost:8098
```

Если выбивает ошибку что нет доступа к папке storage:
permission denied the exception occurred while attempting to log laravel docker <br>
то в командной строке самого Nginx ввести команду - 
chown -R www-data.www-data /var/www

Если выдаёт ошибку "mysql connection refused" или не пускает залогиниться в phpmyadmin, то нужно один раз открыть консоль mysql из докера

# Laravel Vite

у контейнера fpm в котором находится в.т.ч. node, проброшен дополнительный порт 3000 <br>
на котором будет запускаться websocket  на котором будет работать Vite <br>

конфиг сервера в vite.config.js

    server: {
        hmr: {
            host: 'localhost'
        },
        port: 3000,
        host: '0.0.0.0',
    },

# Xdebug
- для подключения xdebug надо раскомментировать его в Fpm.dockerfile
- в терминале macos получить свой ip (ipconfig getifaddr en0) 
- и подставить этот ip в конфиг xdebug.ini (xdebug.client_host=192.168.0.198)
- настроить PhpStorm

<img width="1094" alt="Снимок экрана 2023-02-11 в 23 13 28" src="https://user-images.githubusercontent.com/5227819/218281433-54fe4db1-f6a9-4cea-a80d-fed72fe3bdc4.png">


<img width="965" alt="Снимок экрана 2022-08-28 в 13 22 57" src="https://user-images.githubusercontent.com/5227819/187069224-45c4edaf-4c5e-45db-8979-2d269e4b0507.png">

дальше нужно поставить точку остановы и включить "прослушивание" сервера, и запустить в браузере путь который запустить файл.

<img width="396" alt="Снимок экрана 2023-02-11 в 23 19 02" src="https://user-images.githubusercontent.com/5227819/218281715-43be5fa0-293f-438b-a8bb-28ddd3bb3896.png">


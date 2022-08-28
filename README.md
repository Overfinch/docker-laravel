# docker-laravel
docker config for laravel development

Везде можно заменить путь типа /var/www/laravel-docker на свой путь /var/www/{project_folder} (не обязательно)

(Если подключатся к БД изнутри контейнера то host=mysql (по имени сервиса БД в docker-compose.yml), а если из системы то то host=localhost port 3306)
DB connection config in .env file

DB_CONNECTION=mysql <br>
DB_HOST=mysql <br>
DB_PORT=3306 <br>
DB_DATABASE=laravel <br>
DB_USERNAME=root <br>
DB_PASSWORD=root <br>

Если выбивает ошибку что нет доступа к папке storage:
permission denied the exception occurred while attempting to log laravel docker

то в командной строке самого Nginx ввести команду - 
chown -R www-data.www-data /var/www

# Xdebug
- для подключения xdebug надо раскомментировать его в Fpm.dockerfile
- в терминале macos получить свой ip (ipconfig getifaddr en0) 
- и подставить этот ip в конфиг xdebug.ini (xdebug.client_host=192.168.0.198)
- настроить PhpStorm
- 
<img width="1094" alt="Снимок экрана 2022-08-28 в 13 26 17" src="https://user-images.githubusercontent.com/5227819/187069327-89e51fbd-527a-4646-b6b2-e0e462e073f2.png">


<img width="965" alt="Снимок экрана 2022-08-28 в 13 22 57" src="https://user-images.githubusercontent.com/5227819/187069224-45c4edaf-4c5e-45db-8979-2d269e4b0507.png">

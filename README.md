# docker-laravel
docker config for laravel development

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
<img width="1099" alt="Снимок экрана 2022-06-23 в 18 45 25" src="https://user-images.githubusercontent.com/5227819/175340649-abc9e397-3082-428e-a577-7a98e328f423.png">
<img width="806" alt="Снимок экрана 2022-06-23 в 18 47 47" src="https://user-images.githubusercontent.com/5227819/175340883-f22e9e17-fb5e-4225-ae51-2bd660413096.png">

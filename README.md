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

# Usage:
# docker build -t docker-php-example .
# docker run -d -p 8080:80 docker-php-example
# open http://192.168.99.100:8080/

FROM php
ENV APP_DIR /var/www/app
ENV APPLICATION_ENV development
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
EXPOSE 80
VOLUME $APP_DIR
CMD ["php", "-S", "0.0.0.0:80", "-t", "./public", "./public/index.php"]

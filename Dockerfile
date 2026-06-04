# syntax=docker/dockerfile:1.7

FROM node:22-alpine AS frontend
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY resources ./resources
COPY vite.config.js ./
RUN npm run build

FROM php:8.3-fpm-alpine AS php_base
RUN apk add --no-cache icu-libs libjpeg-turbo libpng libwebp libzip su-exec \
    && apk add --no-cache --virtual .build-deps icu-dev libjpeg-turbo-dev libpng-dev libwebp-dev libzip-dev linux-headers \
    && docker-php-ext-configure gd --with-jpeg --with-webp \
    && docker-php-ext-install -j"$(nproc)" bcmath gd intl opcache pcntl pdo_mysql zip \
    && apk del .build-deps

FROM php_base AS composer_deps
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer
WORKDIR /app
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-interaction --no-progress --prefer-dist --optimize-autoloader --no-scripts
COPY . .
RUN composer dump-autoload --no-dev --optimize --no-interaction

FROM php_base AS app
WORKDIR /var/www/html
COPY --from=composer_deps /app /var/www/html
COPY --from=frontend /app/public/build /var/www/html/public/build
COPY docker/php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
COPY docker/php/www.conf /usr/local/etc/php-fpm.d/zz-app.conf
COPY docker/entrypoint.sh /usr/local/bin/app-entrypoint
RUN chmod +x /usr/local/bin/app-entrypoint \
    && mkdir -p storage/app/public storage/framework/cache storage/framework/sessions storage/framework/views storage/logs bootstrap/cache \
    && chown -R www-data:www-data storage bootstrap/cache

ENTRYPOINT ["app-entrypoint"]
CMD ["php-fpm"]

FROM nginx:1.27-alpine AS web
WORKDIR /var/www/html
COPY --from=app /var/www/html/public /var/www/html/public
COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf
RUN ln -s /var/www/html/storage/app/public /var/www/html/public/storage

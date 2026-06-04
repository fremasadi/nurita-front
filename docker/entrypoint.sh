#!/bin/sh
set -e

mkdir -p storage/app/public storage/framework/cache storage/framework/sessions storage/framework/views storage/logs bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache

if [ "${APP_ENV:-production}" = "production" ]; then
    su-exec www-data php artisan config:cache
    su-exec www-data php artisan route:cache
    su-exec www-data php artisan view:cache
fi

if [ "$1" = "php-fpm" ]; then
    exec docker-php-entrypoint "$@"
fi

exec su-exec www-data docker-php-entrypoint "$@"

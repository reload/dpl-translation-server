FROM testlagoon/php-8.2-cli-drupal:main

COPY composer.* /app/
COPY assets /app/assets
RUN composer install --no-dev
COPY . /app
RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web

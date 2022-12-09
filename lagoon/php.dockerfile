ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM testlagoon/php-8.1-fpm:main

COPY --from=cli /app /app

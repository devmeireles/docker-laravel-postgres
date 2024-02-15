#!/bin/bash

# execute chmod +x setup.sh before

# Create a Laravel project
docker-compose exec -it app composer create-project laravel/laravel app

# Run artisan key:generate
docker-compose exec -it app sh -c 'cd app && php artisan key:generate'

# Create index.php file
echo "<?php

\$uri = urldecode(
  parse_url(\$_SERVER['REQUEST_URI'], PHP_URL_PATH) ?? ''
);

if (\$uri !== '/' && file_exists(__DIR__ . '/public' . \$uri)) {
  return false;
}

require_once __DIR__ . '/public/index.php';" > app/index.php

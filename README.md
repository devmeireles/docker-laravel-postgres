# Laravel and PostgreSQL Docker Setup

This Docker setup provides a development environment for Laravel applications with a PostgreSQL database.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/devmeireles/docker-laravel-postgres
   cd docker-laravel-postgres
   ```

    <br />

2. Build and start the Docker containers:

   ```bash
   docker-compose up -d
   ```

    <br />

3. Give permissions to bash script:

   ```bash
   chmod +x setup.sh
   ```

    <br />

4. Setup Laravel project

   ```bash
   ./setup.sh
   ```

    <br />

5. Run Laravel database migrations:

   ```bash
   docker-compose exec -it app php artisan migrate
   ```

    <br />

## Additional Configuration

### NGINX Configuration

The NGINX configuration is located in `docker/nginx/laravel.conf`. You can customize this file based on your project's requirements. Make sure to restart the NGINX container after making changes:

```bash
docker-compose restart nginx
```

### PostgreSQL Configuration

The PostgreSQL database configuration is defined in the `docker-compose.yml` file. Adjust the environment variables as needed.

## License

This Docker setup is open-sourced software licensed under the [MIT license](https://opensource.org/license/mit/).

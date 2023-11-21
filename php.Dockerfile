#APARTADO PHP

# Usa una imagen base de PHP con Apache
FROM php:7.4-apache

# Instala el controlador mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Establece el directorio de trabajo en la imagen
WORKDIR /var/www/html

# Copia los archivos de tu aplicación PHP
COPY . .

# ... Otro contenido de tu Dockerfile

# Inicia el servidor Apache al ejecutar el contenedor
CMD ["apache2-foreground"]

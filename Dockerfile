# Usa una imagen base de Apache con PHP
FROM php:8.2-apache

# Copia los archivos de tu app al contenedor
COPY ./app/ /var/www/html/

# Habilita módulos necesarios (si usas MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Da permisos a la carpeta
RUN chown -R www-data:www-data /var/www/html

# Puerto 80 expuesto por Apache
EXPOSE 80

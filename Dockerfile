# Imagen base con PHP y Apache
FROM php:7.4-apache

# Habilitar extensiones necesarias (por ejemplo para MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar archivos al directorio raíz de Apache
COPY . /var/www/html/

# Dar permisos apropiados
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Habilitar mod_rewrite si lo necesitas
RUN a2enmod rewrite

# Configuración opcional para .htaccess
# Si usas .htaccess, agrega esto:
# RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

EXPOSE 80

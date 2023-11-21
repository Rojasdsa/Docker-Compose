#APARTADO SQL

# Usa una imagen base de MySQL
FROM mysql:8.0

# Copia el archivo SQL al contenedor
COPY aceitunas.sql /docker-entrypoint-initdb.d/


# Usar la imagen oficial de n8n
FROM n8nio/n8n:latest

# Copia el archivo .env a la carpeta por defecto de n8n
COPY .env /home/node/.n8n/.env

# Copiar la carpeta de nodos personalizados, si la necesitas
COPY nodes /home/node/.n8n/nodes

# Copiar la base de datos SQLite para la primera vez
COPY database.sqlite /home/node/.n8n/database.sqlite

# Exponer el puerto por defecto de n8n
EXPOSE 5678

# Imagen base de Node
FROM node:18-alpine

# Carpeta dentro del contenedor
WORKDIR /app

# Copiar archivos package.json
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto del proyecto
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para iniciar
CMD ["npm", "start"]

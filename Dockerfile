# FROM --platform=linux/amd64/v3 node:20.11.1-alpine3.19
FROM node:20.11.1-alpine3.19
# FROM --platform=$BUILDPLATFORM node:20.11.1-alpine3.19
# /app
# cd app
WORKDIR /app

#Dest /app
COPY package.json ./

#Instalar las dependencias
RUN npm install
#Dest /app
COPY . .

RUN npm run test

# Eliminar archivos y dependencias que no se necesitan
RUN rm -rf test && rm -rf node_modules

#Instalar las dependencias de producción
RUN npm install --prod

CMD ["node", "app.js"]

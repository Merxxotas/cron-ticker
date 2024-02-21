FROM node:20.11.1-alpine3.19
# /app
# cd app
WORKDIR /app

#Dest /app
COPY app.js package.json ./

#Instalar las dependencias
RUN npm install

COPY app.js ./

CMD ["node", "app.js"]

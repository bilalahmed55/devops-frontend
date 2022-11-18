FROM node:10-alpine

LABEL name="Node Express Application" \   
     maintainer="Syed Bilal <bilalahmed123873@gmail.com>" \
     summary="A Node Express application"

# Create app directory
WORKDIR /app

EXPOSE 8080

COPY package*.json ./

RUN npm install

RUN apk add curl 

COPY server.js ./

CMD [ "npm", "start" ]
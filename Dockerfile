FROM node:stretch-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . ./app

EXPOSE 8080

ENTRYPOINT ["npm", "start"]
# BUILD STAGE
FROM node:alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm","run","dev" ]


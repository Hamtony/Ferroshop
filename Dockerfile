FROM node:18

RUN mkdir -p /usr/src/app
#Workind Dir
WORKDIR /app

#Copy packages Json Files
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build
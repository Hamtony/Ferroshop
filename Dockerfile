FROM node:20

#Workind Dir
WORKDIR D:/.cosas/.universidad/.IHC/App NodoJS/ferroshopapp

#Copy packages Json Files
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["node", "build/server.js"] 
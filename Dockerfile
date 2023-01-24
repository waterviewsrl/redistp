FROM node:19.4.0

COPY package*.json ./
RUN npm install

COPY server.js ./

CMD [ "node", "server.js" ]

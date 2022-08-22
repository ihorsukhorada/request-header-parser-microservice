FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --production

COPY . ./

CMD ["node", "src"]
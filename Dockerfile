FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

WORKDIR /usr/src/app/client

RUN pwd

RUN yarn

COPY . .

EXPOSE 5000

CMD ["yarn", "start"]

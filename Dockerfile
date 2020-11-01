FROM node:14

WORKDIR /usr/src/app

COPY . .

RUN yarn

WORKDIR /usr/src/app/client

RUN pwd

RUN yarn
WORKDIR /usr/src/app/client
RUN yarn run build
RUN yarn test:nowatch
WORKDIR /usr/src/app

EXPOSE 5000
RUN yarn test

CMD ["yarn", "start"]

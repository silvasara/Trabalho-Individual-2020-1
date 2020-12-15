FROM node:14.15.1

WORKDIR /client

COPY . .

RUN yarn install

EXPOSE 8080

CMD ["yarn", "dev"]

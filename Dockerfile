FROM node:20-alpine AS base

RUN apk update

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY . .

RUN yarn install && yarn build

ENV PORT=80

CMD ["yarn", "start:prod"]
FROM node:lts-slim

RUN npm -g install serve
WORKDIR /app

COPY /dist/spa .

CMD serve -s


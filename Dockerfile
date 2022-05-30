FROM node:16.14.0-alpine as build
ARG COMMIT_SHA
WORKDIR /usr/src/app

RUN echo "Commit SHA is ${COMMIT_SHA}"

CMD ["node", "--max-http-header-size=16000", "./bin/www.js"]

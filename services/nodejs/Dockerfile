FROM node:7

MAINTAINER Sean Macdonald <sean@crazyhorse.com>

#	bootstrap
RUN mkdir -p /usr/src/app
COPY ./package.json /usr/src/
WORKDIR /usr/src
RUN npm install
COPY ./ /usr/src/app/
WORKDIR /usr/src/app

#	Orchestra
LABEL io.gourd.hak.version="1.0.5"

CMD ["npm","start"]
EXPOSE 8888

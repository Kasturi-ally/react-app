FROM ubuntu:latest
RUN apt-get update
RUN apt-get install xz-utils

ADD https://nodejs.org/dist/v18.18.1/node-v18.18.1-linux-x64.tar.xz .
RUN tar -xvf node-v18.18.1-linux-x64.tar.xz
WORKDIR node-v18.18.1-linux-x64
RUN cp -r lib/* /usr/lib/
RUN cp -r bin/* /usr/bin/
RUN npx create-react-app kasturi -y
WORKDIR kasturi
RUN npm init -y
CMD npm run start

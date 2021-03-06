#FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu
FROM node:latest as builder
#COPY --from=qemu /usr/bin/qemu-aarch64-static /usr/bin
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apt update
RUN apt install -y vim
RUN npm install -g npm@7.9.0
RUN npm install nodemon -g
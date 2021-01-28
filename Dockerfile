FROM arm64v8/alpine
COPY --from=multiarch/qemu-user-static /usr/bin/qemu-aarch64-static /usr/bin/ 
WORKDIR /usr/src/app
RUN apk add --update nodejs
RUN apk add --update npm
RUN npm install nodemon -g

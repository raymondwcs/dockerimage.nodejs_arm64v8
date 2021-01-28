FROM arm64v8/node
ADD qemu-arm-static /usr/bin
WORKDIR /usr/src/app
RUN npm install -g nodemon

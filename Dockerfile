FROM arm64v8/node
ADD qemu-arm-static /usr/bin
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g nodemon

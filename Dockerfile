FROM arm64v8/node
ADD qemu-arm-static /usr/bin
RUN sudo mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN sudo npm install -g nodemon

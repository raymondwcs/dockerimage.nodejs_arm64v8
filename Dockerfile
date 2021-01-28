FROM arm64v8/node
RUN sudo mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN sudo npm install -g nodemon

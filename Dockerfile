#!/bin/bash
FROM arm64v8/node
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g nodemon

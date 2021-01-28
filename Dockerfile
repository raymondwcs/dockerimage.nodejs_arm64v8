FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu
FROM arm64v8/node as builder
COPY --from=qemu /usr/bin/qemu-aarch64-static /usr/bin
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install nodemon -g

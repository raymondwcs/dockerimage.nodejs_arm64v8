# Docker Hub's Automated Image Builds
This example demonstrates how to build (and publish) docker images for the Apple M1 processor (arm64v8) using:
1. [Docker Hub's automated builds](https://docs.docker.com/docker-hub/builds/)
1. [`qemu-user-static`](https://github.com/multiarch/qemu-user-static)

This [Docker Hub repository](https://hub.docker.com/repository/docker/raymondwcs/node) is linked to this [GitHub project](https://github.com/raymondwcs/dockerimage.nodejs_arm64v8.git).  Updates (`commit`) to the GitHub project trigger automated build of this [Docker image](Dockerfile)

## Reference
https://github.com/cgiraldo/docker-hello-multiarch

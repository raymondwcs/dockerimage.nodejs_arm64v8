# Docker Hub's Automated Image Builds
This example demonstrates how to build (and publish) docker images for the Apple M1 processor (arm64v8) using:
1. [Docker Hub's automated builds](https://docs.docker.com/docker-hub/builds/)
1. [`qemu-user-static`](https://github.com/multiarch/qemu-user-static)

This [Docker Hub repository](https://hub.docker.com/repository/docker/raymondwcs/node) is linked to this [GitHub project](https://github.com/raymondwcs/dockerimage.nodejs_arm64v8.git).  Updates (`commit`) to the GitHub project trigger automated build of this [Docker image](Dockerfile)

## Getting the docker image
Download from Docker Hub:
```
docker pull raymondwcs/node
```
Or manual build:
```
docker build . -t raymondwcs/node
```
## Testing
Create following *aliaes* for `node`, `npm` and `nodemon` in `.zshrc`
```
NODE_DOCKER_IMAGE="raymondwcs/node"
node() {
  docker run --rm -it --init -v $(pwd):/usr/src/app -w /usr/src/app -p 8099:8099 --name node $NODE_DOCKER_IMAGE node $*
}
npm() {
  docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --name node $NODE_DOCKER_IMAGE npm $*
}
nodemon() {
  docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app -p 8099:8099 --name nodemon $NODE_DOCKER_IMAGE nodemon $*
}
```
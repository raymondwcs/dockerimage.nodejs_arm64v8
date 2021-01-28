# Docker Hub's Automated Image Builds
This example demonstrates how to automatically build and publish docker images using Docker Hub when a new version of this project is committed.  The example [Dockerfile](Dockerfile) builds a Node.js image for the ARM64V8 architecture.

## Build image
```
docker pull raymondwcs/node 
```
## Usage
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
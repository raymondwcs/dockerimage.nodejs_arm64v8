# Docker Hub's Automated Image Builds
This example demonstrates how to build and publish docker images using Docker Hub's automated builds facility.  A Docker Hub [repository](https://hub.docker.com/repository/docker/raymondwcs/node) is linked to this GitHub [project](https://github.com/raymondwcs/dockerimage.nodejs_arm64v8.git).  A new version of docker image will be built and published automatically when a new version of the GitHub project is committed. The example [Dockerfile](Dockerfile) builds a Node.js image for the ARM64V8 architecture.

## Pull image from Docker Hub
```
docker pull raymondwcs/node
```
## Notes
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
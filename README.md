# ARM64V8 Node.js
## Build image
```
docker build -t raymondwcs/node .
```
## Usage
Create *aliaes* for `node`, `npm` and `nodemon`
```
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
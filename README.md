# Node.js ARM64V8
## Build image
```
docker build -t raymondwcs/node .
```
## Usage
1. Run `node`
```
docker run --rm -it --init -v $(pwd):/usr/src/app -w /usr/src/app -p 8099:8099 --name node raymondwcs/node node
```
2. Run `nodemon`
```
docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app -p 8099:8099 --name nodemon raymondwcs/node nodemon
```
3. Run `npm`
```
docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --name node raymondwcs/node npm
```
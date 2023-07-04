## Exercise 3.3: Building images inside of the container

Create a new script/program that downloads a repository from GitHub, builds a Dockerfile located in the root, and then publishes it into the Docker Hub.

The script could eg. be designed to be used so that as the first argument it gets the GitHub repository and as the second argument the Docker Hub repository. Eg. when run as follows

```
  ./builder.sh mluukkai/express_app mluukkai/testing
```

the script clones https://github.com/mluukkai/express_app, build the image, and pushes it to the Docker Hub repository mluukkai/testing

### Commands:

```
  chmod +x builder.sh
  ./builder.sh mluukkai/express_app mluukkai/testing
```

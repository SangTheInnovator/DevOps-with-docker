## Mandatory exercise 1.12: Hello, frontend!

A good developer creates well written READMEs that can be used to create Dockerfiles with ease.

Clone, fork or download the project from https://github.com/docker-hy/material-applications/tree/main/example-frontend.

Create a Dockerfile for the project (example-frontend) and give a command so that the project runs in a docker container with port 5000 exposed and published so when you start the container and navigate to http://localhost:5000 you will see message if you’re successful.


As in other exercises, do not alter the code of the project

TIP: The project has install instructions in README.

TIP: Note that the app starts to accept connections when “Accepting connections at http://localhost:5000” has been printed to the screen, this takes a few seconds

TIP: You do not have to install anything new outside containers.

Submit the Dockerfile.

&nbsp;


**Dockerfile**

```Dockerfile
FROM node:16

WORKDIR /usr/src

COPY package*.json ./

COPY . .

RUN npm install && npm list

RUN npm run build && npm install -g serve

CMD ["npx", "serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
```

**Shell**

```shell
    docker build . -t hello-frontend
    docker run -p 5000:5000 hello-frontend
```

&nbsp;

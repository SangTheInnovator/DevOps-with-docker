## Mandatory exercise 1.13: Hello, backend!

Clone, fork or download a project from https://github.com/docker-hy/material-applications/tree/main/example-backend.

Create a Dockerfile for the project (example-backend) and give a command so that the project runs in a docker container with port 8080 published.

When you start the container and navigate to http://localhost:8080/ping you should get a “pong” as response.

Do not alter the code of the project

Submit the Dockerfile and the command used.

&nbsp;


**Dockerfile**

```Dockerfile
FROM golang:1.16

WORKDIR /go/delivery

COPY . .

RUN go build

RUN go test

CMD ./server

EXPOSE 8080
```

**Shell**

```shell
    docker build . -t hello-backend
    docker run -p 8080:8080 hello-backend
```

&nbsp;
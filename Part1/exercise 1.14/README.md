## 1.14: Environment

Start both frontend-example and backend-example with correct ports exposed and add ENV to Dockerfile with necessary information from both READMEs (front,back).

Ignore the backend configurations until frontend sends requests to _backend_url_/ping when you press the button.

You know that the configuration is ready when the button for 1.14 of frontend-example responds and turns green.

Do not alter the code of either project

The frontend will first talk to your browser. Then the code will be executed from your browser and that will send a message to backend.

- TIP: When configuring web applications keep browser developer console ALWAYS open, F12 or cmd+shift+I when the browser window is open. Information about configuring cross origin requests is in README of the backend project.

- TIP: Developer console has multiple views, most important ones are Console and Network. Exploring the Network tab can give you a lot of information on where messages are being sent and what is received as response!

Submit the edited Dockerfiles and commands used to run.

&nbsp;


**Dockerfile (frontend)**

```Dockerfile
FROM node:16

WORKDIR /usr/src

COPY package*.json ./

COPY . .

ENV REACT_APP_BACKEND_URL http://localhost:8080/

RUN npm install && npm list

RUN npm run build && npm install -g serve

CMD ["npx", "serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
```

**Dockerfile (backend)**

```Dockerfile
FROM golang:1.16

WORKDIR /go/delivery

COPY . .

ENV REQUEST_ORIGIN http://localhost:5000

RUN go build

RUN go test

CMD ./server

EXPOSE 8080
```

**Shell**

```shell
docker build . -t hello-backend
docker run -d -p 8080:8080 hello-backend

docker build . -t hello-frontend
docker run -d -p 5000:5000 hello-frontend
```

&nbsp;

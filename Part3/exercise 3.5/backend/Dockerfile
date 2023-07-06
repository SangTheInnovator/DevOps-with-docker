FROM ubuntu:latest

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN apt-get update && apt-get install -y wget

RUN tar -xvf go1.16.4.linux-amd64.tar.gz && mv go /usr/local

RUN export GOROOT=/usr/local/go && \
    export GOPATH=$HOME/Projects/Proj1 && \
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

RUN useradd -m appuser && go build 

RUN useradd --create-home user 

USER user 

CMD ./server 
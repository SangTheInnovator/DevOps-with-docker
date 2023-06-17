FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY curl-web.sh . 

RUN apt-get update; apt-get install -y curl; chmod +x curl-web.sh

CMD ./curl-web.sh
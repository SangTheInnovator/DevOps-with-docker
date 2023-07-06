FROM ubuntu:latest

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_16.x 

RUN apt-get install -y nodejs 

RUN useradd -m appuser

RUN npm install && npm run build && npm install -g serve

RUN useradd --create-home user 

USER user 

CMD ["serve", "-s", "-l", "5000", "build"]


FROM openjdk:8

WORKDIR /usr/src

COPY . .

RUN apt-get update && apt-get install -y dos2unix && dos2unix

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

EXPOSE 8080
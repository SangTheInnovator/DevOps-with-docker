## Exercise 3.2: Building images inside of a container

As seen from the Docker Compose file, the Watchtower uses a volume to docker.sock socket to access the Docker daemon of the host from the container:

```
services:
watchtower:
  image: containrrr/watchtower
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
  # ...
```

In practice, this means that Watchtower can run commands on Docker the same way we can "command" Docker from the cli with docker ps, docker run, etc.

We can easily use the same trick in our own scripts!

So if we mount the docker.sock socket to a container, we can use the command docker inside the container, just like we are using it in the host terminal!


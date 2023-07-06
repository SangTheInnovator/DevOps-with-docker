FROM containrrr/watchtower

COPY script.sh /script.sh

ENV DOCKER_USR=default
ENV DOCKER_PWD=default

ENTRYPOINT [ "chmod +x /script.sh && /script.sh" ]

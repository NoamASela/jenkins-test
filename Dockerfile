FROM docker:dind
USER 1000
RUN apk add curl
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
    chmod +x /usr/local/bin/docker-compose &&\
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

FROM docker:dind
RUN apk add curl
RUN adduser  --disabled-password --gecos "" --uid 1000 jenkins
USER jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
USER root
RUN chmod +x /usr/local/bin/docker-compose

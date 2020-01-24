  
FROM docker:dind
USER root
RUN wget -O /usr/local/bin/docker-compose "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" \
  && chmod +x /usr/local/bin/docker-compose

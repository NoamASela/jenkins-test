FROM docker:dind
RUN apk add curl
USER root
RUN adduser --uid 1000 --disabled-login --gecos "" jenkins
RUN addgroup -g 993 jenkins jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose	
RUN chmod +x /usr/local/bin/docker-compose
USER jenkins

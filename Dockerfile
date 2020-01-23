FROM docker:dind
RUN apk add curl
USER root
RUN addgroup -g 993 jenkins jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose	
RUN chmod +x /usr/local/bin/docker-compose
USER jenkins

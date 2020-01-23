FROM docker:dind
RUN apk add curl
USER root
RUN groupadd docker -g 993
RUN usermod -a -G docker jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose	
RUN chmod +x /usr/local/bin/docker-compose
USER jenkins

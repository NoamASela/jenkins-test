FROM docker:dind
RUN apk add curl
RUN adduser  --disabled-password --gecos "" --uid 1000 jenkins	
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose	
RUN chmod +X /usr/local/bin/docker-compose	
RUN ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose	
RUN chown jenkins:jenkins /usr/local/bin/docker-compose	
RUN chown jenkins:jenkins /usr/bin/docker-compose

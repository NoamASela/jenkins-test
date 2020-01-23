FROM docker:dind
ENTRYPOINT ["docker", "run", "--rm -v /var/run/docker.sock:/var/run/docker.sock docker/compose"]

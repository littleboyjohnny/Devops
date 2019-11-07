FROM sonarqube
USER root
RUN mkdir -p /usr/share/man/man1
RUN apt-get update && apt-get install -y \
    maven

USER sonarqube
WORKDIR $SONARQUBE_HOME
ENTRYPOINT ["./bin/run.sh"]

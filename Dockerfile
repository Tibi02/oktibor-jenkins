FROM jenkins/jenkins

USER root

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G staff,docker jenkins

RUN curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

USER jenkins
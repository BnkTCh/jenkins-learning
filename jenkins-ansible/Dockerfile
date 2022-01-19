FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade

RUN apt-get install -y awscli

RUN apt-get install -y zip 

USER jenkins

EXPOSE 4000

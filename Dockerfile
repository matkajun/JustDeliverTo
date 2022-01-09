FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt install jq -y
RUN apt-get install zip
RUN apt-get -y install awscli

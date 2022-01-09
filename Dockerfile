FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt install jq -y
RUN apt-get install zip
RUN apt-get -y install awscli



RUN apt update
RUN apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install python3 -y
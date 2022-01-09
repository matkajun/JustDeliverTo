FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt install jq -y
RUN apt-get install zip
RUN apt-get -y install awscli
RUN apt-get install -y sudo 


RUN apt update -y
RUN sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null



RUN sudo apt-get update
RUN sudo apt-get install docker-ce docker-ce-cli containerd.io -y


RUN export BROWSER=/usr/bin/firefox
RUN export DISPLAY=:0
RUN sudo apt-get install -y xdg-utils


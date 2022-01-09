FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt install jq -y
RUN apt-get install zip
RUN apt install wget
COPY gdrive . 
RUN chmod +x gdrive
RUN install gdrive /usr/local/bin/gdrive 

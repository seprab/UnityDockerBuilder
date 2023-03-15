# Filename: Dockerfile 
FROM ubuntu:18.04

RUN mkdir -p /scripts
COPY unity-config.sh /scripts
COPY project-builder.sh /scripts
COPY image-setup.sh /scripts
COPY return-license.sh /scripts

WORKDIR /scripts
RUN chmod +x project-builder.sh
RUN chmod +x unity-config.sh
RUN chmod +x image-setup.sh
RUN chmod +x return-license.sh
RUN ./image-setup.sh 2021.3.20f1 577897200b8b 
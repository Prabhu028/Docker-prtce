FROM tomcat:9-jdk8
LABEL author="prabhu" 
RUN adduser -h game -s bin/bash -D prabhu
COPY ./gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
USER prabhu
WORKDIR /game
ADD --chown=prabhu:game 
EXPOSE 8080

 
FROM tomcat:8-jre8

ARG warName
ENV WARNAME=$warName

RUN rm -rf /usr/local/tomcat/webapps/*

COPY /gameoflife-web/target/$WARNAME.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

CMD "echo" "Building Done, next step is push image to dockerhub"

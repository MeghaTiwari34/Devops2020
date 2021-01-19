FROM tomcat:8.0-alpine
MAINTAINER Megha Tiwari
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Megtiw965432 -O /usr/local/tomcat/webapps/sampleapp.war 'http://192.168.1.8:8082/artifactory/megha.nagp.devops/com/nagarro/devops-tools/devops/demosampleapplication/1.0.0-SNAPSHOT/demosampleapplication-1.0.0-SNAPSHOT.war'
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run

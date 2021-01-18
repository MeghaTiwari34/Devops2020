FROM tomcat:8.0-alpine
MAINTAINER Megha Tiwari
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Megtiw965432 -O /usr/local/tomcat/webapps/sampleapplication.war http://localhost:8082/artifactory/megha.devopsnagp2020/com/nagarro/devops-tools/devops/demosampleapplication/1.0.0-SNAPSHOT/demosampleapplication-1.0.0-20210112.143338-1.war
EXPOSE 8081
CMD /usr/local/tomcat/bin/catalina.sh run

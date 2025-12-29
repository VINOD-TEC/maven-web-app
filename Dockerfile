FROM tomcat:latest
MAINTAINER Vinod <vinu4.tv@gmail.coms>
EXPOSE 8080
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

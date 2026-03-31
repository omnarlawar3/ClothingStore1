FROM tomcat:9.0
COPY webapps/ROOT /usr/local/tomcat/webapps/ROOT
EXPOSE 8080

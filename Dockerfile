FROM tomcat:8.0
ADD **/*.war /usr/local/tomcat/webaapps

EXPOSE 8080

CMD ["catalina.sh","run"]
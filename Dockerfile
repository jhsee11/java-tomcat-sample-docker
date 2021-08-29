FROM tomcat:8.0
ADD **/*.war /usr/local/tomcat/webaapps

EXPOSE 9095

CMD ["catalina.sh","run"]
FROM tomcat:8.0
MAINTAINER NETHA
COPY **/*.war /usr/local/tomcat/webapps/

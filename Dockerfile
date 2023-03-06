#-------------------------------------------------------------------
# Dockerfile for a dockerized tomcat + java web app
#
# Base image details: https://hub.docker.com/_/tomcat
#-------------------------------------------------------------------
FROM tomcat:9.0

# Load the war file into tomcat webapp folder
COPY service-war/target/service-war-*.war webapps/service.war

# Manually extract war file and change logging behavior for debug purposes
RUN mkdir webapps/service
WORKDIR webapps/service
RUN jar xf ../service.war && rm ../service.war
RUN sed -i "/^handlers/ s/.*/handlers = org.apache.juli.FileHandler, java.util.logging.ConsoleHandler/" "WEB-INF/classes/logging.properties"

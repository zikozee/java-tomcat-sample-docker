FROM tomcat:8.0
RUN echo "copying war file to /usr/local/tomcat/webapps/"
COPY **/*.war /usr/local/tomcat/webapps/
RUN echo "exposing port"
EXPOSE 8080
CMD ["catalina.sh", "run"]
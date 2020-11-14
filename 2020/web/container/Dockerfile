FROM tomcat:7.0.90-jre8
USER root
ADD *.war /usr/local/tomcat/webapps/


COPY ./tomcat-config/tomcat-users.xml /usr/local/tomcat/conf/
COPY ./tomcat-config/context.xml /usr/local/tomcat/webapps/manager/META-INF/


EXPOSE 8080
RUN cat /usr/local/tomcat/conf/tomcat-users.xml
CMD ["catalina.sh", "run"]
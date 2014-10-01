FROM debian:jessie

# Install Java.
RUN apt-get update
RUN apt-get install -y openjdk-7-jre

RUN apt-get install -yq --no-install-recommends wget pwgen ca-certificates
RUN apt-get clean

RUN rm -rf /var/lib/apt/lists/*


ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
ENV TOMCAT_MAJOR_VERSION 8
ENV TOMCAT_MINOR_VERSION 8.0.11
ENV CATALINA_HOME /tomcat

RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz
RUN wget -qO- https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz.md5 | md5sum -c -
RUN tar zxf apache-tomcat-*.tar.gz
RUN rm apache-tomcat-*.tar.gz
RUN mv apache-tomcat* /tomcat

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
CMD ["/run.sh"]

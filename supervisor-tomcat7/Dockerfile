FROM jmuraski/jdk7

MAINTAINER Joseph Muraski "https://github.com/jmuraski"

RUN apt-get -y install tomcat7 && rm -rf /var/lib/tomcat7/webapps/ROOT

EXPOSE 8080
ADD tomcat.sv.conf /etc/supervisor/conf.d/

CMD ["supervisord", "-c", "/etc/supervisor.conf"]

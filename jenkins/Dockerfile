FROM jmuraski/jdk-oracle:7

MAINTAINER Joseph Muraski "https://github.com/jmuraski

RUN mkdir -p /var/lib/jenkins && wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war -O /var/lib/jenkins/jenkins.war

EXPOSE 8080
ADD jenkins.sv.conf /etc/supervisor/conf.d/
CMD supervisord -c /etc/supervisor.conf
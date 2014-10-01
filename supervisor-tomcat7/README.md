Tomcat 7 (a Docker image)
=========================

Docker base image for [Apache Tomcat 7] (http://tomcat.apache.org/). An child image typically sets some configuration
and adds war file to create a web application image.

A child container might have a Dockerfile ending in:

    # also expose debugging port
    EXPOSE 8000
    CMD supervisord -c /etc/supervisor.conf

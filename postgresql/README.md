Postgresql 9.3 (a Docker image)
=========================

Docker base image for [Postgresql] (http://www.postgresql.org/). An child image typically sets some configuration
and adds war file to create a web application image.

A child container might have a Dockerfile ending in:

    EXPOSE XXXX
    CMD supervisord -c /etc/supervisor.conf

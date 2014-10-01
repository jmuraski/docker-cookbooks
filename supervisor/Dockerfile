FROM debian:jessie

MAINTAINER Joseph Muraski "https://github.com/jmuraski"

# make sure the package repository is up to date and update ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y supervisor

# install supervisor (which has no package on 12.04) to manage our processes
# the supervisor config file is more likely to change and is therefore added as a later step

RUN apt-get install -y
RUN mkdir -p /var/log/supervisor
# create directory for child images to store configuration in
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisor.conf /etc/supervisor.conf

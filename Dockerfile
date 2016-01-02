# React & node

FROM node:0.12
MAINTAINER bravewood

# install necessary tools
RUN apt-get update
RUN apt-get install -y vim

# Prepare app directory
RUN mkdir -p /var/www/html
# COPY react-tutorial-master /var/www/html
COPY lib/boot_server.sh /var/www/html/
WORKDIR /var/www/html
RUN chmod +x boot_server.sh

# install libraries
WORKDIR /var/www/html
#RUN npm install


# Expose the app port
EXPOSE 3000

# Start the server
#CMD node server.js

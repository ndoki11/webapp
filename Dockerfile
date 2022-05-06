FROM ubuntu:18.04
MAINTAINER eazytraining (eazytrainingfr@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=nointeractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

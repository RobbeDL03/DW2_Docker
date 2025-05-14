FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2

COPY html/ /var/www/html/

RUN date > /var/www/html/buildtime.txt

EXPOSE 80

CMD service apache2 start && bash

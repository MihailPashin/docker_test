FROM httpd:bookworm

RUN apt-get update && apt-get install -y \
    bash

COPY httpd.conf /usr/local/apache2/conf/test.httpd.conf
RUN echo "Include /usr/local/apache2/conf/test.httpd.conf" \
    >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80 443

WORKDIR /usr/local/apache2

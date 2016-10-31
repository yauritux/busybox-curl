FROM busybox:latest

MAINTAINER Yauri Attamimi <yauri.attamimi@bhinneka.com>

WORKDIR /home

ADD curl-7.30.0.ermine.tar.bz2 .

RUN mv /home/curl-7.30.0.ermine/curl.ermine /bin/curl \
    && rm -Rf /home/curl-7.30.0.ermine

CMD ["/bin/sh"]

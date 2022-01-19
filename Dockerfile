FROM busybox:latest

MAINTAINER Yauri Attamimi <yauritux@gmail.com>

WORKDIR /bin

ADD curl-amd64 curl

RUN chmod u+x /bin/curl

RUN export PATH=$PATH:/bin/curl

WORKDIR /home

CMD ["/bin/sh"]

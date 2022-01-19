FROM busybox:latest

MAINTAINER Yauri Attamimi <yauri.attamimi@automate.id>

WORKDIR /bin

ADD curl-aarch64 curl

RUN chmod u+x /bin/curl

RUN export PATH=$PATH:/bin/curl

WORKDIR /home

CMD ["/bin/sh"]

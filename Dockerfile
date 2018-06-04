FROM amazonlinux:2
LABEL maintainer "youyo <1003ni2@gmail.com>"

RUN yum install -y squid
ADD squid.conf /etc/squid/squid.conf

EXPOSE 3128/TCP
ENTRYPOINT ["/usr/sbin/squid","-f","/etc/squid/squid.conf","-N"]

FROM amazonlinux:2
LABEL maintainer "youyo <1003ni@gmail.com>"

RUN yum install -y squid
ADD squid.conf /etc/squid/squid.conf
ADD passwd /etc/squid/passwd

EXPOSE 3128/TCP 3389/TCP
ENTRYPOINT ["/usr/sbin/squid","-f","/etc/squid/squid.conf","-N"]

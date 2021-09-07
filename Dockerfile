FROM alpine:3.13.6

RUN cd /etc/apk/keys && \
    wget http://alpine.adiscon.com/rsyslog@lists.adiscon.com-5a55e598.rsa.pub && \
    echo 'http://alpine.adiscon.com/3.7/stable' >> /etc/apk/repositories && \
    apk add rsyslog=8.2012.0-r1
        
COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/udp

CMD ["/usr/sbin/rsyslogd","-n","-f","/etc/rsyslog.conf"]
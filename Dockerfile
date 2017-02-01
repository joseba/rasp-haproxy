FROM joseba/rasp-base

RUN apt-get update && \
apt-get install -yqq \
haproxy \
ca-certificates

#RUN groupadd haproxy && \
#useradd -g haproxy -s /sbin/nologin -m haproxy

VOLUME /data
ENV TERM xterm

EXPOSE 8080
EXPOSE 8443
ENTRYPOINT []
CMD ["haproxy", "-f", "/data/haproxy.cfg"]
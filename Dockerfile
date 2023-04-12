FROM ubuntu:22.04
ADD --chmod=777 init.sh run.sh /
RUN apt update; apt install -y wget xz-utils unzip
RUN ["/init.sh"]
EXPOSE 3979/tcp
EXPOSE 3979/udp
CMD ["/run.sh"]

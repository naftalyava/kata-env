FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y systemd systemd-sysv openssh-client libasan5 libubsan1 kmod sudo iptables && apt-get clean && rm -rf /var/lib/apt/lists/*

# Disable some services that we do not need and which can cause issues

CMD ["/sbin/init"]


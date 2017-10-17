FROM ubuntu:17.04
MAINTAINER kp <dockerkp@gmail.com>

RUN apt-get update && \
  apt-get install -y software-properties-common
RUN add-apt-repository ppa:bitcoin-abc/ppa
RUN apt-get update && \
    apt-get install -y bitcoind=0.15.0-uahf-zesty2



VOLUME ["/opt/bitcoinabc"]

EXPOSE 8332
EXPOSE 8333
EXPOSE 18332
EXPOSE 18333

CMD ["/usr/bin/bitcoind", "--conf=/opt/bitcoinabc/bitcoind.conf", "--printtoconsole"]

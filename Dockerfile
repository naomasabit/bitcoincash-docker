FROM ubuntu:17.10
MAINTAINER kp <dockerkp@gmail.com>

RUN apt-get update && \
    apt-get install -y software-properties-common
RUN add-apt-repository ppa:bitcoin-abc/ppa && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update && \
    apt-get install -y libstdc++-7-dev bitcoind

VOLUME ["/opt/bitcoinabc"]

EXPOSE 8332 8333 18332 18333

CMD ["/usr/bin/bitcoind", "--conf=/opt/bitcoinabc/bitcoind.conf", "--printtoconsole"]

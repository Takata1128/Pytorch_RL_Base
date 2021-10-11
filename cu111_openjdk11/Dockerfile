FROM rokah/pytorch_rl_base:cu111

# openjdk
RUN echo "deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu focal main" > /etc/apt/sources.list.d/openjdk.list &&\
    echo "deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu focal main" > /etc/apt/sources.list.d/openjdk.list &&\
    apt-key adv --keyserver keyserver.ubuntu.com --recv da1a4a13543b466853baf164eb9b1d8886f44e2a &&\
    apt-get update && apt-get install -y openjdk-11-jdk

COPY start.sh /root/
WORKDIR /root
CMD ["bash"]
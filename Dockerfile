FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y sudo openssh-server curl lsb-release && \
    apt-get install -y ansible && \
    apt-get install -y git && \
    curl -L https://omnitruck.chef.io/install.sh | sudo bash

ENV HOME /root
WORKDIR /root
CMD ["bash"]

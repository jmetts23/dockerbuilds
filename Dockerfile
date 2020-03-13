FROM ubuntu

MAINTAINER nobody

RUN apt update && \
apt install -y ansible && \
apt install -y git
apt install -y curl
apt install -y openssh-client
RUN git clone https://github.com/aruba/aruba-ansible-modules.git
RUN ls
RUN chmod +x ./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py
RUN python ./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py

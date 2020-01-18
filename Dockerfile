FROM ubuntu

MAINTAINER nobody

RUN apt update && \
apt install -y ansible && \
apt install -y git
RUN git clone https://github.com/aruba/aruba-ansible-modules.git
RUN ls
RUN chmod +x ./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py
RUN ./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py && \
rm -rf /tmp/* && \

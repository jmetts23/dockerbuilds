FROM alpine:latest

MAINTAINER nobody

RUN apk update && \
apk add --no-cache ansible && \
git clone https://github.com/aruba/aruba-ansible-modules.git \
cd aruba-ansible-modules/ \
cd aruba_module_installer/ \
chmod +x aruba_module_installer.py \
./aruba_module_installer.py \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

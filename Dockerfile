FROM alpine:latest

MAINTAINER nobody

RUN apk update && \
apk add --no-cache ansible && \
apk add --no-cache git && \
git clone https://github.com/aruba/aruba-ansible-modules.git && \
chmod +x ./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py && \
./aruba-ansible-modules/aruba_module_installer/aruba_module_installer.py && \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

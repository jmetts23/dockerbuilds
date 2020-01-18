FROM alpine:latest

MAINTAINER nobody

RUN apk update && \
apk add --no-cache ansible && \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

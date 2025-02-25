FROM alpine:latest
LABEL Name="alpinexmrig" Version="0.0.1"
RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
    && echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
    && apk add xmrig 
CMD [ "xmrig", "--url", "89.41.182.136:443", "--threads", "4", "--tls", "--no-color", "--donate-level=1" ]

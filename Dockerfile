FROM alpine
RUN apk add --no-cache ca-certificates
ADD oauth2_proxy /usr/bin/
ENTRYPOINT ["oauth2_proxy"]
VOLUME "/etc/oauth2_proxy/"
CMD ["-config", "/etc/oauth2_proxy/oauth2_proxy.cfg"]

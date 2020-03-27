FROM alpine:latest
RUN apk --no-cache add curl
RUN curl -L https://github.com/YouROK/TorrServer/releases/latest/download/TorrServer-linux-amd64 -o TorrServer-linux-amd64 && chmod +x TorrServer-linux-amd64
EXPOSE 8090
VOLUME [ "/data" ]
RUN ls -la /
ENTRYPOINT /TorrServer-linux-amd64 -d /data

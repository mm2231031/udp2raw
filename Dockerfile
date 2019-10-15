
FROM alpine:latest as file
MAINTAINER Jack Mo <mo2231031@live.cn>
RUN apk add wget
RUN cd / &&wget https://github.com/wangyu-/udp2raw-tunnel/releases/download/20181113.0/udp2raw_binaries.tar.gz \
    && tar xvf udp2raw_binaries.tar.gz

FROM alpine:latest 
RUN apk --update --purge --no-cache add iptables
COPY --from=file /udp2raw_amd64 /udp2raw
ENTRYPOINT [ "/udp2raw" ]

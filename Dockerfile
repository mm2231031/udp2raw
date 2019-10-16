
FROM alpine:latest as file
MAINTAINER Jack Mo <mo2231031@live.cn>
RUN apk add wget
RUN cd / &&wget $(wget -qO- https://api.github.com/repos/wangyu-/udp2raw-tunnel/releases/latest | grep "browser_download_url"  | awk -F': ' '{print $2}' | sed 's/\"/''/g') \
    && tar xvf udp2raw_binaries.tar.gz

FROM scratch 
COPY --from=file /udp2raw_amd64 /udp2raw
ENTRYPOINT [ "/udp2raw" ]

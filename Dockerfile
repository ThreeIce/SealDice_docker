FROM scratch
ADD rootfs.tar.gz /
ADD sealdice-core.tar.gz /bin/SealDice
# 安装curl和ca根证书
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates curl
WORKDIR /bin/SealDice
VOLUME [ "/bin/SealDice/data" ]
EXPOSE 3211
CMD ["./sealdice-core"]

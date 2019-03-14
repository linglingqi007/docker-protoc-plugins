FROM alpine:latest
WORKDIR /tmp/build
RUN apk update && apk add --no-cache git curl build-base automake autoconf libtool \
    && git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc.git \
    && cd grpc && git submodule update --init && make && make install && mv bins/opt/protobuf/protoc /usr/local/bin/ \
    && rm -rf /tmp/build/grpc
CMD ["protoc", "--help"]

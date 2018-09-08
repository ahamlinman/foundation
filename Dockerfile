FROM alpine

RUN apk add --no-cache \
  bash \
  curl \
  docker \
  python3

RUN pip3 install --no-cache-dir awscli

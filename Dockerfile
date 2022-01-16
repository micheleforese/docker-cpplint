FROM debian:11

LABEL mantainer="Michele Forese"
LABEL email="michele.forese.personal@gmail.com"
LABEL name="cpplint"
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update \
  && apt-get install \
  -y \
  --no-install-recommends \
  python3 \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip install cpplint

WORKDIR /src

VOLUME [ "/src" ]
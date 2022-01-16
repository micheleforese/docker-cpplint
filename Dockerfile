FROM debian:11

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
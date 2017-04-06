FROM debian:sid

COPY . /src

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    nodejs nodejs-legacy npm git wget ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/* \
    && cd /src && npm install
RUN mkdir -p /data

EXPOSE  7123
WORKDIR /src

CMD ["/src/docker-entrypoint.sh"]

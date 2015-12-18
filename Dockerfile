FROM debian:sid

COPY . /src

RUN apt-get update \
    && apt-get install -y  --no-install-recommends \
    nodejs nodejs-legacy npm git wget \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/* \
    && cd /src && npm install

EXPOSE  7123

CMD ["/src/docker-entrypoint.sh"]

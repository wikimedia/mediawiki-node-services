FROM debian:sid

RUN apt-get update \
    && apt-get install -y nodejs nodejs-legacy npm git wget\
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/*

COPY . /src
RUN cd /src; npm install

EXPOSE  7123

CMD ["node", "/src/server.js", "-n", "1"]

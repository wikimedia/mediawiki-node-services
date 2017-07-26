FROM wikimedia/nodejs

COPY . /src

WORKDIR /src
RUN npm install
RUN mkdir -p /data

EXPOSE  7231

CMD ["/src/docker-entrypoint.sh"]

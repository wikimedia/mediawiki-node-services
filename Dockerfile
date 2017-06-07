FROM wikimedia/nodejs

COPY . /src

WORKDIR /src
RUN npm install
RUN mkdir -p /data

EXPOSE  7123

CMD ["/src/docker-entrypoint.sh"]

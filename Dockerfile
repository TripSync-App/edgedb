FROM edgedb/edgedb

ENV EDGEDB_SERVER_TLS_CERT_MODE=generate_self_signed
ENV EDGEDB_SERVER_SECURITY=insecure_dev_mode

WORKDIR /app

COPY edgedb.toml .
COPY migrate.sh .
COPY dbschema ./dbschema/

EXPOSE 5656

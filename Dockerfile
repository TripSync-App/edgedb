FROM edgedb/edgedb

ENV EDGEDB_SERVER_TLS_CERT_MODE=generate_self_signed
ENV EDGEDB_SERVER_SECURITY=insecure_dev_mode
ENV EDGEDB_SERVER_BINARY_ENDPOINT_SECURITY=optional
ENV EDGEDB_SERVER_HTTP_ENDPOINT_SECURITY=optional

WORKDIR /app

COPY edgedb.toml .
COPY migrate.sh .
COPY test_data.edgeql .
COPY dbschema ./dbschema/

EXPOSE 5656

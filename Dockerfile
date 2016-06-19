FROM python:2.7-alpine

RUN apk add --update libpq postgresql-dev gcc musl-dev \
 && pip install mschematool==0.7.1 psycopg2 \
 && apk del postgresql-dev gcc musl-dev \
 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/mschematool"]

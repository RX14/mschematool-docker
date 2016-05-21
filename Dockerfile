FROM python:2.7-alpine

RUN pip install mschematool psycopg2

ENTRYPOINT ["/usr/local/bin/mschematool"]

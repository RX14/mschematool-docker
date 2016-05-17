FROM python:2.7

RUN pip install mschematool psycopg2

ENTRYPOINT ["/usr/local/bin/mschematool"]

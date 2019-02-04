FROM alpine:3.8

RUN apk --no-cache upgrade && apk --no-cache add curl openssl py2-pip rethinkdb && pip install rethinkdb

COPY dump /
CMD ["/dump"]

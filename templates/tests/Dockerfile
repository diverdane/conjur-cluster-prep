FROM alpine:3.12

RUN mkdir -p /tests
WORKDIR /tests

# Install Docker client
RUN apk add --no-cache curl openssl bash

ENTRYPOINT [ "/tests/test" ]

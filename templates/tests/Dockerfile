FROM alpine:3.12

# Install packages for testing
RUN apk add --no-cache bash bind-tools coreutils curl git ncurses openssl

# Install bats-core in /usr/local
RUN curl -#L https://github.com/bats-core/bats-core/archive/master.zip | unzip - && \
    bash bats-core-master/install.sh /usr/local && \
    rm -rf ./bats-core-master

# Install bats-support, bats-assert, and bats-files libraries
# These need to be source at run time, e.g.:
#    source 'bats/bats-support/load.bash'
#    source 'test_helper/bats-assert/load'
#    source 'test_helper/bats-file/load'
RUN git clone https://github.com/ztombol/bats-support bats/bats-support

RUN mkdir -p /tests
WORKDIR /tests

ENTRYPOINT ["/usr/local/bin/bats", "-t", "/tests/run.sh"]

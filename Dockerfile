FROM ubuntu:jammy
RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
      bash \
      redis-tools \
      mysql-client \
      postgresql-client-14 \
      curl wget \
      ca-certificates \
    && \
    apt-get -qq clean

# Install mongosh
RUN mkdir /tmp/mongosh && \
    cd /tmp/mongosh && \
    wget https://downloads.mongodb.com/compass/mongosh-2.1.1-linux-x64.tgz && \
    tar -zxf mongosh-2.1.1-linux-x64.tgz && \
    mv mongosh-2.1.1-linux-x64/bin/mongosh /usr/local/bin && \
    mv mongosh-2.1.1-linux-x64/bin/mongosh_crypt_v1.so /usr/local/lib && \
    rm -rf /tmp/mongosh && \
    chmod +x /usr/local/bin/mongosh

COPY ./wait-for-* /usr/local/bin

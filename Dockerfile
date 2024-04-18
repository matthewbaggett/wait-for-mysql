# checkov:skip=CKV_DOCKER_2 I don't care about healthchecks in a test container.
# checkov:skip=CKV_DOCKER_3 I don't care about rootless in a test container.
FROM ubuntu:jammy
RUN apt-get -qq update && \
    apt-get -yqq install --no-install-recommends \
      bash \
      redis-tools \
      mysql-client \
      postgresql-client-14 \
      curl wget \
      ca-certificates \
    && \
    apt-get autoremove -yqq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/dpkg/status.old /var/cache/debconf/templates.dat /var/log/dpkg.log /var/log/lastlog /var/log/apt/*.log

# Install mongosh
WORKDIR /tmp/mongosh
RUN wget -q https://downloads.mongodb.com/compass/mongosh-2.1.1-linux-x64.tgz && \
    tar -zxf mongosh-2.1.1-linux-x64.tgz && \
    mv mongosh-2.1.1-linux-x64/bin/mongosh /usr/local/bin && \
    mv mongosh-2.1.1-linux-x64/bin/mongosh_crypt_v1.so /usr/local/lib && \
    rm -rf /tmp/mongosh && \
    chmod +x /usr/local/bin/mongosh

COPY ./wait-for-* /usr/local/bin

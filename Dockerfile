FROM ttbb/base:jdk11

ARG version=0.23.0
ARG download=0.23.0-bin

RUN wget https://downloads.apache.org/druid/$version/apache-druid-$download.tar.gz && \
mkdir /opt/sh/druid && \
tar -xf apache-druid-$download.tar.gz -C /opt/sh/druid --strip-components 1 && \
rm -rf /opt/sh/apache-druid-$download.tar.gz

WORKDIR /opt/sh/druid

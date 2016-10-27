FROM geodata/gdal:1.11.5
MAINTAINER winsent <pipetc@gmail.com>

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

ADD . /usr/local/src/navi2pg
RUN \
  apt-get -y update --fix-missing && \
  apt-get install -y cmake g++ && \
  apt-get clean

RUN cd /usr/local/src/navi2pg && cmake . && make install

WORKDIR /data

VOLUME /data

CMD navi2pg -v

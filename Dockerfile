FROM ubuntu:18.04

COPY . /mlag
WORKDIR /mlag

RUN apt-get update -y
RUN apt-get -y install \
		autoconf \
		wget \
		git \
		iproute2 \
		libnl-3-dev \
		libnl-cli-3-dev \
		libnl-genl-3-dev \
		libnl-idiag-3-dev \
		libnl-route-3-dev \
		python \
		make

RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu8_amd64.deb
RUN apt-get install ./gcc-4.8_4.8.5-4ubuntu8_amd64.deb -y
RUN cd /mlag/iccpd/; make


# Run GnuCash in a container
#
# docker run -it \
#	-e DISPLAY=unix$DISPLAY \
#	-v $XAUTHORITY:/root/.Xauthority \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	gnucash-built:latest
#
# Mount $(pwd) as a volume using: -v $(pwd):/src/files

FROM ubuntu:bionic
LABEL maintainer "Siddharth Kannan <mail@siddharthkannan.in>"

RUN apt-get update -q && apt-get install -y -q \
		wget \
		libglib2.0-dev \
		pkg-config \
		cmake \
		gcc \
		g++ \
		libxml2-dev \
		libxslt1-dev \
		xsltproc \
		webkit2gtk-4.0-dev \
		swig \
		guile-2.2-dev \
		gwenhywfar-tools \
		libofx-dev \
		libgtest-dev \
		libdbi-dev \
		libxml2-utils \
		libboost-dev \
		libboost-date-time-dev \
		libboost-filesystem-dev \
		libboost-locale-dev \
		libboost-regex-dev \
		libboost-program-options-dev \
		libboost-system-dev \
		&& mkdir /src \
		&& cd /src \
		&& wget -q "https://sourceforge.net/projects/gnucash/files/gnucash%20(stable)/4.1/gnucash-4.1.tar.bz2" \
		&& bzip2 -d gnucash-4.1.tar.bz2 \
		&& tar xf gnucash-4.1.tar \
		&& mkdir build \
		&& cd build \
		&& cmake -DWITH_AQBANKING=false -DWITH_SQL=false ../gnucash-4.1 \
		&& make --silent

ENTRYPOINT ["/src/build/bin/gnucash"]
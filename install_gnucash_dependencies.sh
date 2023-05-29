#! /bin/bash

apt update -y 
apt upgrade -y 

apt install -y  \
		git \
		gettext \
		wget \
		libglib2.0-dev \
		pkg-config \
		cmake \
		gcc \
		g++ \
		libxml2-dev \
		libxslt1-dev \
		xsltproc \
		swig \
		guile-2.2-dev \
		gwenhywfar-tools \
		libofx-dev \
		libgtest-dev \
		libdbi-dev \
		libxml2-utils \
        libwebkit2gtk-4.1-dev \
		libboost-dev \
		libboost-date-time-dev \
		libboost-filesystem-dev \
		libboost-locale-dev \
		libboost-regex-dev \
		libboost-program-options-dev \
		libboost-system-dev 


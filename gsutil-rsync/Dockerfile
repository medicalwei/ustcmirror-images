FROM ustcmirror/base:alpine
LABEL maintainer "Yao Wei (魏銘廷) <mwei@lxde.org>"

RUN apk add --no-cache \
	python2 \
	py-setuptools \
	openssl \
	libffi

RUN apk add --no-cache --virtual .build-deps \
	gcc\
	musl-dev \
	python2-dev \
	py2-pip \
	openssl-dev \
	libffi-dev

RUN pip install gsutil

RUN apk del .build-deps

ADD sync.sh /

FROM alpine:3.6
MAINTAINER Felix Glas <felix.glas@afconsult.com>

RUN apk update && apk add \
	bash \
	openjdk8 \
	curl

RUN bash

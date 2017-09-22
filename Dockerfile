FROM alpine:3.6
MAINTAINER Felix Glas <felix.glas@afconsult.com>

ARG USER=spark-user

RUN apk update && apk add \
	bash \
	openjdk8 \
	curl

RUN adduser -D $USER
WORKDIR /home/$USER

RUN curl -k -L -O https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz \
	&& tar -xvf spark-2.2.0-bin-hadoop2.7.tgz

CMD ./spark-2.2.0-bin-hadoop2.7/bin/spark-shell --master local

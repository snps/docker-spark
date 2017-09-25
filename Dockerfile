FROM snps/sbt
LABEL com.apple.author="Felix Glas"

ARG USER=spark-user

RUN apk update && apk add \
	bash \
	coreutils \
	curl \
	openjdk8 \
	procps

RUN adduser -D $USER
WORKDIR /home/$USER

RUN curl -k -L -O https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz \
	&& tar -xvf spark-2.2.0-bin-hadoop2.7.tgz && rm spark-2.2.0-bin-hadoop2.7.tgz

COPY keep_running.sh ./

RUN chmod 744 keep_running.sh

CMD ./spark-2.2.0-bin-hadoop2.7/bin/spark-shell --master local

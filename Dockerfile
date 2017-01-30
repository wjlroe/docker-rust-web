FROM scorpil/rust:1.14
MAINTAINER William Roe "git@wjlr.org.uk"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install \
	build-essential \
  uuid-dev \
	libssl-dev \
	-qqy \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN rustc --version

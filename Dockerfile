FROM scorpil/rust:stable
MAINTAINER William Roe "git@wjlr.org.uk"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install \
	build-essential \
	libssl-dev \
	-qqy \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
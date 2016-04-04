FROM ubuntu:14.04
MAINTAINER Tianrking <tian.r.king@gmail.com>
ENV REFRESHED_AT 2016-02-28

RUN apt-get update -y && \
	apt-get install git -y && \
	apt-get install libnss3-tools && \
	apt-get clean && \
	git clone https://github.com/XX-net/XX-Net.git \
WORKDIR "XX-Net/"
CMD bash start.sh
EXPOSE 8787


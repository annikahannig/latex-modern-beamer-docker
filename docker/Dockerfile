
## Based upon: 
##    https://github.com/matze/mtheme/blob/master/docker/Dockerfile

FROM ubuntu:artful
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy sudo
RUN apt-get install -qy texlive-full
RUN apt-get install -qy \
            gnuplot \
            wget \
            build-essential

RUN apt-get install -qy \
            python-pygments

ADD ./getFiraFont.sh ./getFiraFont.sh
RUN ./getFiraFont.sh

WORKDIR /data
VOLUME ["/data"]

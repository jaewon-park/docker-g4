FROM ubuntu:14.04
MAINTAINER Jaewon Park <jaewon.park@vt.edu>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git dpkg-dev make g++ gcc cmake \
    binutils libx11-dev libxpm-dev libxft-dev \
    libxext-dev libpng12-dev libjpeg-turbo8-dev \
    python gfortran libssl-dev wget libgsl0ldbl libgsl0-dev


ENV ROOT_TAR="root_v6.05.02.Linux-ubuntu14-x86_64-gcc4.8.tar.gz"
ENV ROOT_DL="https://root.cern.ch/download/$ROOT_TAR"

ENV ROOTSYS="/cern/root/"
ENV PATH="$ROOTSYS/bin:$PATH"
ENV LD_LIBRARY_PATH="$ROOTSYS/lib:$LD_LIBRARY_PATH"

RUN mkdir /cern \
    && cd /cern 

RUN mkdir -p /sw/build \
    && cd /sw/build

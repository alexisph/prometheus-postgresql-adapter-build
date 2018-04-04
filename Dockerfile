FROM ubuntu:xenial

MAINTAINER Alexander Phinikarides

WORKDIR /app
ADD . /app

RUN ./build.sh

EXPOSE 9201
ENV NAME prom01
CMD ["/bin/bash"]


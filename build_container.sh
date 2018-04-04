#!/bin/sh

wget -c https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
docker build -t prometheus-postgresql-adapter .


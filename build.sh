#!/bin/bash
apt update
apt install -y curl git make
tar -C /usr/local -xzf go1.10.1.linux-amd64.tar.gz
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> /etc/profile
echo "export GOPATH=$HOME/go" >> /etc/profile
mkdir -p $HOME/go/{bin,src}
. /etc/profile
curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
go get -u github.com/timescale/prometheus-postgresql-adapter
cd $HOME/go/src/github.com/timescale/prometheus-postgresql-adapter/
dep ensure
make


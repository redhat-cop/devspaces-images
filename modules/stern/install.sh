#!/usr/bin/env bash

mkdir -p ~/tmp
curl -sSL -o ~/tmp/stern_linux_amd64.tar.gz https://github.com/stern/stern/releases/download/v1.33.1/stern_1.33.1_linux_amd64.tar.gz
mkdir -p ~/tmp/stern_linux_amd64 && tar -zxf ~/tmp/stern_linux_amd64.tar.gz -C ~/tmp/stern_linux_amd64
mv ~/tmp/stern_linux_amd64/stern /usr/local/bin/stern
#rm -rf ~/tmp
chmod +x /usr/local/bin/stern

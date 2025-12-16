#!/usr/bin/env bash

mkdir -p ~/tmp
curl -sSL -o ~/tmp/act_linux_x86_64.tar.gz https://github.com/nektos/act/releases/latest/download/act_Linux_x86_64.tar.gz
mkdir -p ~/tmp/act_linux_amd64 && tar -zxf ~/tmp/act_linux_x86_64.tar.gz -C ~/tmp/act_linux_amd64
mv ~/tmp/act_linux_amd64/act /usr/local/bin/act
rm -rf ~/tmp
chmod +x /usr/local/bin/act
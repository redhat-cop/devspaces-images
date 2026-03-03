#!/usr/bin/env bash

mkdir -p ~/tmp
curl -sSL -o ~/tmp/lazygit.tgz https://github.com/jesseduffield/lazygit/releases/download/v0.59.0/lazygit_0.59.0_linux_x86_64.tar.gz
mkdir -p ~/tmp/lazygit_amd64 && tar -zxf ~/tmp/lazygit.tgz -C ~/tmp/lazygit_amd64
mv ~/tmp/lazygit_amd64/lazygit /usr/local/bin/lazygit
rm -rf ~/tmp
chmod +x /usr/local/bin/lazygit


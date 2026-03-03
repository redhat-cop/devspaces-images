#!/usr/bin/env bash

export VER="0.59.0"
mkdir -p ~/tmp
curl -sSL -o ~/tmp/lazygit.tgz https://github.com/jesseduffield/lazygit/releases/download/v${VER}/lazygit_${VER}_linux_x86_64.tar.gz
mkdir -p ~/tmp/lazygit_amd64 && tar -zxf ~/tmp/lazygit.tar.gz -C ~/tmp/lazygit_amd64
mv ~/tmp/lazygit_amd64/lazygit /usr/local/bin/lazygit
rm -rf ~/tmp
chmod +x /usr/local/bin/lazygit


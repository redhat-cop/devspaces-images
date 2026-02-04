#!/usr/bin/env bash

mkdir -p ~/tmp

export VERSION=$(curl https://storage.googleapis.com/kubevirt-prow/release/kubevirt/kubevirt/stable.txt)
wget -P ~/tmp https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/virtctl-${VERSION}-linux-amd64
mv ~/tmp/virtctl-${VERSION}-linux-amd64 /usr/local/bin/virtctl
rm -rf ~/tmp
chmod +x /usr/local/bin/virtctl

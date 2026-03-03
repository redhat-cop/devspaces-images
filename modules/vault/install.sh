#!/usr/bin/env bash

# sourced from https://developer.hashicorp.com/well-architected-framework/verify-hashicorp-binary#create-alpine-linux-container-with-hashicorp-tools

mkdir -p ~/tmp

PRODUCT="vault"
VERSION="1.21.3"

wget -O ~/tmp/${PRODUCT}_${VERSION}_linux_amd64.zip https://releases.hashicorp.com/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_linux_amd64.zip
wget -O ~/tmp/${PRODUCT}_${VERSION}_SHA256SUMS https://releases.hashicorp.com/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS
wget -O ~/tmp/${PRODUCT}_${VERSION}_SHA256SUMS.sig https://releases.hashicorp.com/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS.sig
wget -qO- https://www.hashicorp.com/.well-known/pgp-key.txt | gpg --import
gpg --verify ~/tmp/${PRODUCT}_${VERSION}_SHA256SUMS.sig ~/tmp/${PRODUCT}_${VERSION}_SHA256SUMS
grep ~/tmp/${PRODUCT}_${VERSION}_linux_amd64.zip ~/tmp/${PRODUCT}_${VERSION}_SHA256SUMS | sha256sum -c 
unzip ~/tmp/${PRODUCT}_${VERSION}_linux_amd64.zip -d ~/tmp
mv ~/tmp/${PRODUCT} /usr/local/bin/${PRODUCT}
chmod +x /usr/local/bin/${PRODUCT}
rm -rf ~/tmp

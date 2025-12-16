#!/usr/bin/env bash

curl -sSL -o /opt/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/refs/heads/master/kubectx
curl -sSL -o /opt/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/refs/heads/master/kubens

ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
ln -s /opt/kubectx/kubens /usr/local/bin/kubens
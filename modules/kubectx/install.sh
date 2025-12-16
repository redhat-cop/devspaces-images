#!/usr/bin/env bash

curl -sSL -o /opt/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/refs/heads/master/kubectx
curl -sSL -o /opt/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/refs/heads/master/kubens

chmod +x /opt/kubectx
chmod +x /opt/kubens

ln -s /opt/kubectx /usr/local/bin/kubectx
ln -s /opt/kubectx /usr/local/bin/kubens
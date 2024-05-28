#!/usr/bin/env bash

microdnf update -y
microdnf clean all
mkdir -p ${HOME}
mkdir -p /usr/local/bin
chgrp -R 0 /home
chmod -R g=u /home
cp /tmp/artifacts/entrypoint.sh /entrypoint.sh
cp /tmp/artifacts/entrypoint-nested.sh /entrypoint-nested.sh
chown 0:0 /entrypoint.sh
chmod +x /entrypoint.sh
chown 0:0 /entrypoint-nested.sh
chmod +x /entrypoint-nested.sh
chown 0:0 /etc/passwd
chown 0:0 /etc/group
chmod g=u /etc/passwd /etc/group
# Setup for rootless podman
setcap cap_setuid+ep /usr/bin/newuidmap
setcap cap_setgid+ep /usr/bin/newgidmap
touch /etc/subgid /etc/subuid
chown 0:0 /etc/subgid
chown 0:0 /etc/subuid
chmod -R g=u /etc/subuid /etc/subgid
# Create Sym Links for OpenShift CLI (Assumed to be retrieved by an init-container)
ln -s /projects/bin/oc /usr/local/bin/oc
ln -s /projects/bin/kubectl /usr/local/bin/kubectl
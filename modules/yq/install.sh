#!/usr/bin/env bash

TEMP_DIR="$(mktemp -d)" 
YQ_VER=$(basename $(curl -Ls -o /dev/null -w %{url_effective} https://github.com/mikefarah/yq/releases/latest))
curl -fsSL -o ${TEMP_DIR}/yq.tar.gz https://github.com/mikefarah/yq/releases/download/${YQ_VER}/yq_linux_amd64.tar.gz 
tar -xzf ${TEMP_DIR}/yq.tar.gz -C ${TEMP_DIR} 
cp ${TEMP_DIR}/yq_linux_amd64 /usr/local/bin/yq 
chmod +x /usr/local/bin/yq 
rm -rf "${TEMP_DIR}"

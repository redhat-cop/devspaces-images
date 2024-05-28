#!/usr/bin/env bash

TEMP_DIR="$(mktemp -d)"
curl -fsSL -o ${TEMP_DIR}/awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
unzip ${TEMP_DIR}/awscliv2.zip -d ${TEMP_DIR}
${TEMP_DIR}/aws/install
rm -rf "${TEMP_DIR}"
pip3 install aws-sam-cli
pip3 install awscli-local
chmod -R g=u ${HOME}
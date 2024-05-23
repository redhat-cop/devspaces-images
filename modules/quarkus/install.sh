#!/usr/bin/env bash

TEMP_DIR="$(mktemp -d)" 
mkdir -p /usr/local/quarkus-cli/lib 
mkdir /usr/local/quarkus-cli/bin 
curl -fsSL -o ${TEMP_DIR}/quarkus-cli.tgz https://github.com/quarkusio/quarkus/releases/download/${QUARKUS_VERSION}/quarkus-cli-${QUARKUS_VERSION}.tar.gz 
tar -xzf ${TEMP_DIR}/quarkus-cli.tgz -C ${TEMP_DIR} 
cp ${TEMP_DIR}/quarkus-cli-${QUARKUS_VERSION}/bin/quarkus /usr/local/quarkus-cli/bin 
cp ${TEMP_DIR}/quarkus-cli-${QUARKUS_VERSION}/lib/quarkus-cli-${QUARKUS_VERSION}-runner.jar /usr/local/quarkus-cli/lib 
chmod +x /usr/local/quarkus-cli/bin/quarkus  
rm -rf "${TEMP_DIR}" 
cd /usr/local/bin
ln -s ../quarkus-cli/bin/quarkus quarkus
mkdir -p ${JBANG_DIR}
curl -Ls https://sh.jbang.dev | bash -s - app setup
ln -s ${JBANG_DIR}/bin/jbang /usr/local/bin/jbang

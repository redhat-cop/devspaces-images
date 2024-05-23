#!/usr/bin/env bash

TEMP_DIR="$(mktemp -d)" 
mkdir -p /usr/local/maven /usr/local/maven/ref 
curl -fsSL -o ${TEMP_DIR}/apache-maven.tar.gz https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz 
tar -xzf ${TEMP_DIR}/apache-maven.tar.gz -C /usr/local/maven --strip-components=1  
rm -rf "${TEMP_DIR}"
cd /usr/local/bin
ln -s ../maven/bin/mvn mvn

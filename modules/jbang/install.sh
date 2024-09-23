#!/usr/bin/env bash

mkdir -p ${JBANG_DIR}
curl -Ls https://sh.jbang.dev | bash -s - app setup
ln -s ${JBANG_DIR}/bin/jbang /usr/local/bin/jbang

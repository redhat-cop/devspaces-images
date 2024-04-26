TEMP_DIR="$(mktemp -d)";
cd "${TEMP_DIR}";
GH_VERSION="2.23.0";
GH_ARCH="linux_amd64";
GH_TGZ="gh_${GH_VERSION}_${GH_ARCH}.tar.gz";
GH_TGZ_URL="https://github.com/cli/cli/releases/download/v${GH_VERSION}/${GH_TGZ}";
GH_CHEKSUMS_URL="https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_checksums.txt";
curl -sSLO "${GH_TGZ_URL}";
curl -sSLO "${GH_CHEKSUMS_URL}";
sha256sum --ignore-missing -c "gh_${GH_VERSION}_checksums.txt" 2>&1 | grep OK;
tar -zxvf "${GH_TGZ}";
mv "gh_${GH_VERSION}_${GH_ARCH}"/bin/gh /usr/local/bin/;
mv "gh_${GH_VERSION}_${GH_ARCH}"/share/man/man1/* /usr/local/share/man/man1;
cd -;
rm -rf "${TEMP_DIR}"
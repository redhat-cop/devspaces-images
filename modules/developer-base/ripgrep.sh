TEMP_DIR="$(mktemp -d)";
cd "${TEMP_DIR}";
RG_VERSION="13.0.0";
RG_ARCH="x86_64-unknown-linux-musl";
RG_TGZ="ripgrep-${RG_VERSION}-${RG_ARCH}.tar.gz";
RG_TGZ_URL="https://github.com/BurntSushi/ripgrep/releases/download/${RG_VERSION}/${RG_TGZ}";
curl -sSLO "${RG_TGZ_URL}";
tar -zxvf "${RG_TGZ}";
mv "ripgrep-${RG_VERSION}-${RG_ARCH}"/rg /usr/local/bin/;
mv "ripgrep-${RG_VERSION}-${RG_ARCH}"/doc/rg.1 /usr/local/share/man/man1;
cd -;
rm -rf "${TEMP_DIR}"

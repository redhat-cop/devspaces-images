TEMP_DIR="$(mktemp -d)";
cd "${TEMP_DIR}";
BAT_VERSION="0.18.3";
BAT_ARCH="x86_64-unknown-linux-musl";
BAT_TGZ="bat-v${BAT_VERSION}-${BAT_ARCH}.tar.gz";
BAT_TGZ_URL="https://github.com/sharkdp/bat/releases/download/v${BAT_VERSION}/${BAT_TGZ}";
curl -sSLO "${BAT_TGZ_URL}";
tar -zxvf "${BAT_TGZ}";
mv "bat-v${BAT_VERSION}-${BAT_ARCH}"/bat /usr/local/bin/;
mv "bat-v${BAT_VERSION}-${BAT_ARCH}"/bat.1 /usr/local/share/man/man1;
cd -;
rm -rf "${TEMP_DIR}"
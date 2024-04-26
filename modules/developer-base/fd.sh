TEMP_DIR="$(mktemp -d)"
cd "${TEMP_DIR}"
FD_VERSION="8.7.0"
FD_ARCH="x86_64-unknown-linux-musl"
FD_TGZ="fd-v${FD_VERSION}-${FD_ARCH}.tar.gz"
FD_TGZ_URL="https://github.com/sharkdp/fd/releases/download/v${FD_VERSION}/${FD_TGZ}"
curl -sSLO "${FD_TGZ_URL}"
tar -xvf "${FD_TGZ}"
mv "fd-v${FD_VERSION}-${FD_ARCH}"/fd /usr/local/bin
mv "fd-v${FD_VERSION}-${FD_ARCH}"/fd.1 /usr/local/share/man/man1
cd -
rm -rf "${TEMP_DIR}"

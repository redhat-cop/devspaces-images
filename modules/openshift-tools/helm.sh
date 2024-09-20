echo "Installing openshift client..."
version=3.12.1
arch=linux-amd64
curl -sLO "https://developers.redhat.com/content-gateway/file/pub/openshift-v4/clients/helm/${version}/helm-${arch}.tar.gz"
tar xzf ./helm-${arch}.tar.gz
mv ./helm-${arch} /usr/bin/helm
chown root:root /usr/bin/helm
helm version
echo "😎😎😎😎😎"
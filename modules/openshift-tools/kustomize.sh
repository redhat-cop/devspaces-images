echo "Installing kustomize..."
version=v5.3.0
arch=linux_amd64
curl -sLO "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${version}/kustomize_${version}_${arch}.tar.gz"
tar xzf ./kustomize_${version}_${arch}.tar.gz
mv ./kustomize /usr/bin/
chown root:root /usr/bin/kustomize
kustomize version
echo "😎😎😎😎😎"
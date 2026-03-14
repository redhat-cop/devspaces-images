echo "Installing openshift client..."
version=4.18.9
arch=linux
curl -sLO "https://mirror.openshift.com/pub/openshift-v4/amd64/clients/ocp/${version}/openshift-client-${arch}-${version}.tar.gz"
tar xzf ./openshift-client-${arch}-${version}.tar.gz
mv ./kubectl /usr/bin/
mv ./oc /usr/bin
kubectl version
oc version
echo "😎😎😎😎😎"